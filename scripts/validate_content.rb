# frozen_string_literal: true

require "date"
require "pathname"
require "uri"
require "yaml"

ROOT = Pathname.new(File.expand_path("..", __dir__))
POST_FILENAME = /\A(\d{4})-(\d{2})-(\d{2})-[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*\.md\z/
PLACEHOLDER_VALUES = ["coming soon", "comming soon"].freeze
PLACEHOLDER_TEXT = [
  "Replace this comment",
  "Replace this text",
  "Paper title",
  "Full Name",
  "20XX"
].freeze
IMAGE_EXTENSIONS = %w[.avif .gif .jpeg .jpg .png .svg .webp].freeze

SCHEMAS = {
  "paper" => {
    directory: ROOT.join("papers", "_posts"),
    required: %w[layout title image authors year ref journal],
    allowed: %w[layout title image authors year ref journal arxiv pdf github supplement permalink]
  },
  "member" => {
    directory: ROOT.join("team", "_posts"),
    required: %w[layout title level position image],
    allowed: %w[
      layout title level position image email github website linkedin scholar twitter calendar
      cv research_statement note co_advised co_advisor alumni next_position permalink
    ]
  }
}.freeze

class ContentChecker
  attr_reader :counts, :errors, :warnings

  def initialize
    @counts = Hash.new(0)
    @errors = []
    @warnings = []
    @member_titles = {}
  end

  def run
    SCHEMAS.each do |type, schema|
      schema[:directory].children.select { |path| path.file? && path.extname == ".md" }.sort.each do |path|
        validate_entry(type, schema, path)
      end
    end

    report
  end

  private

  def relative(path)
    path.relative_path_from(ROOT).to_s.tr("\\", "/")
  end

  def add_error(path, message)
    @errors << "#{relative(path)}: #{message}"
  end

  def add_warning(path, message)
    @warnings << "#{relative(path)}: #{message}"
  end

  def validate_entry(type, schema, path)
    text = path.read(encoding: "UTF-8")
    match = text.match(/\A---\s*\r?\n(.*?)\r?\n---\s*(?:\r?\n|\z)/m)
    unless match
      add_error(path, "missing valid YAML front matter")
      return
    end

    data = YAML.safe_load(match[1], permitted_classes: [Date, Time], aliases: false) || {}
    unless data.is_a?(Hash)
      add_error(path, "front matter must be a key-value map")
      return
    end

    data = data.transform_keys(&:to_s)
    @counts[type] += 1

    validate_filename(path)
    validate_placeholders(path, text)
    validate_fields(type, schema, path, data)
    validate_image(path, data["image"])
    type == "paper" ? validate_paper(path, data) : validate_member(path, data)
  rescue Psych::Exception => e
    add_error(path, "invalid YAML front matter (#{e.message.lines.first.strip})")
  rescue Encoding::InvalidByteSequenceError
    add_error(path, "file is not valid UTF-8")
  end

  def validate_filename(path)
    match = path.basename.to_s.match(POST_FILENAME)
    unless match
      add_error(path, "filename must use YYYY-MM-DD-safe-hyphenated-slug.md")
      return
    end

    Date.iso8601("#{match[1]}-#{match[2]}-#{match[3]}")
  rescue Date::Error
    add_error(path, "filename contains an invalid calendar date")
  end

  def validate_placeholders(path, text)
    marker = PLACEHOLDER_TEXT.find { |value| text.include?(value) }
    add_error(path, "contains unfinished template text: #{marker.inspect}") if marker
  end

  def validate_fields(type, schema, path, data)
    schema[:required].each do |field|
      value = data[field]
      add_error(path, "missing required field #{field.inspect}") if value.nil? || value.to_s.strip.empty?
    end

    unknown = data.keys - schema[:allowed]
    add_error(path, "unknown #{type} field(s): #{unknown.sort.join(', ')}") unless unknown.empty?
    add_error(path, "layout must be #{type.inspect}") unless data["layout"] == type
  end

  def validate_image(path, value)
    return if value.nil? || value.to_s.strip.empty?

    image_path = value.to_s
    unless image_path.start_with?("/")
      add_error(path, "image must be a root-relative site path beginning with /")
      return
    end

    extension = File.extname(image_path).downcase
    add_error(path, "image must use a supported image format") unless IMAGE_EXTENSIONS.include?(extension)
    validate_local_file(path, "image", image_path)
  end

  def validate_local_file(path, field, value)
    target = ROOT.join(value.delete_prefix("/")).cleanpath
    unless target.to_s.start_with?(ROOT.to_s + File::SEPARATOR) && target.file?
      add_error(path, "#{field} points to a missing file: #{value}")
    end
  end

  def validate_url_or_path(path, field, value)
    return if value.nil? || value.to_s.strip.empty?

    string = value.to_s.strip
    if PLACEHOLDER_VALUES.include?(string.downcase)
      add_warning(path, "#{field} is still marked #{string.inspect}")
      return
    end

    if string.start_with?("/")
      validate_local_file(path, field, string)
      return
    end

    uri = URI.parse(string)
    unless %w[http https].include?(uri.scheme) && uri.host
      add_error(path, "#{field} must be an http(s) URL or a root-relative site path")
    end
  rescue URI::InvalidURIError
    add_error(path, "#{field} is not a valid URL: #{string.inspect}")
  end

  def validate_paper(path, data)
    year = data["year"].to_s
    add_error(path, "year must contain four digits") unless year.match?(/\A\d{4}\z/)

    arxiv = data["arxiv"]&.to_s
    if arxiv && !arxiv.empty? && !arxiv.match?(/\A\d{4}\.\d{4,5}(?:v\d+)?\z/)
      add_error(path, "arxiv must look like YYMM.NNNNN")
    end

    %w[pdf supplement].each { |field| validate_url_or_path(path, field, data[field]) }

    github = data["github"]&.to_s&.strip
    return if github.nil? || github.empty?

    if PLACEHOLDER_VALUES.include?(github.downcase)
      add_warning(path, "github is still marked #{github.inspect}")
    elsif github.include?("://")
      validate_url_or_path(path, "github", github)
    elsif !github.match?(/\A[^\s\/]+\/[^\s\/]+\z/)
      add_error(path, "github must use owner/repository or a full URL")
    end
  end

  def validate_member(path, data)
    level = data["level"]&.to_s
    add_error(path, "level must be faculty, grad, or undergrad") unless %w[faculty grad undergrad].include?(level)

    %w[alumni co_advised].each do |field|
      next unless data.key?(field)

      add_error(path, "#{field} must be true or false") unless [true, false].include?(data[field])
    end

    if data["co_advised"] == true && data["co_advisor"].to_s.strip.empty?
      add_error(path, "co_advisor is required when co_advised is true")
    end
    if data["co_advised"] != true && data.key?("co_advisor")
      add_error(path, "co_advisor requires co_advised: true")
    end
    if data.key?("note") && !data["note"].is_a?(String)
      add_error(path, "note must be a short text value")
    end

    email = data["email"]&.to_s
    if email && !email.empty? && !email.match?(/\A[^\s@]+@[^\s@]+\.[^\s@]+\z/)
      add_error(path, "email is not valid")
    end

    %w[website linkedin calendar cv research_statement].each do |field|
      validate_url_or_path(path, field, data[field])
    end

    title = data["title"]&.to_s&.strip
    return if title.nil? || title.empty?

    if @member_titles.key?(title)
      add_error(path, "member title duplicates #{relative(@member_titles[title])}")
    else
      @member_titles[title] = path
    end
  end

  def report
    @warnings.each { |message| warn "warning: #{message}" }
    @errors.each { |message| warn "error: #{message}" }

    if @errors.empty?
      puts "Content check passed: #{@counts['paper']} papers and #{@counts['member']} members."
      puts "#{@warnings.length} warning(s) reported." unless @warnings.empty?
      exit 0
    end

    warn "Content check failed with #{@errors.length} error(s)."
    exit 1
  end
end

ContentChecker.new.run
