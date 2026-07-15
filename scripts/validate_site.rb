# frozen_string_literal: true

require "nokogiri"
require "pathname"
require "uri"

class SiteChecker
  def initialize(root)
    @root = Pathname.new(root).expand_path.cleanpath
    @errors = []
    @documents = {}
  end

  def run
    abort "Generated site not found at #{@root}" unless @root.directory?

    html_files = Dir.chdir(@root) do
      Dir.glob("**/*.html").sort.map { |name| @root.join(name).cleanpath }
    end
    abort "No generated HTML files found at #{@root}" if html_files.empty?

    html_files.each { |path| @documents[path] = Nokogiri::HTML5.parse(path.read(encoding: "UTF-8")) }
    html_files.each { |path| validate_document(path, @documents.fetch(path)) }

    @errors.each { |message| warn "error: #{message}" }
    if @errors.empty?
      puts "Generated-site check passed: #{html_files.length} HTML pages and all local references are valid."
      exit 0
    end

    warn "Generated-site check failed with #{@errors.length} error(s)."
    exit 1
  end

  private

  def relative(path)
    path.relative_path_from(@root).to_s.tr("\\", "/")
  end

  def add_error(path, message)
    @errors << "#{relative(path)}: #{message}"
  end

  def validate_document(path, document)
    html = document.at_css("html")
    add_error(path, "html element needs a lang attribute") if html.nil? || html["lang"].to_s.strip.empty?

    title = document.at_css("head title")
    add_error(path, "page needs a non-empty title") if title.nil? || title.text.strip.empty?

    description = document.at_css('head meta[name="description"]')
    if description.nil? || description["content"].to_s.strip.empty?
      add_error(path, "page needs a non-empty meta description")
    end

    add_error(path, "page must contain exactly one main element") unless document.css("main").length == 1
    add_error(path, "page must contain exactly one h1") unless document.css("h1").length == 1

    ids = Hash.new(0)
    document.css("[id]").each { |node| ids[node["id"]] += 1 }
    ids.each { |id, count| add_error(path, "duplicate id #{id.inspect}") if count > 1 }

    document.css("img").each do |image|
      add_error(path, "image #{image['src'].inspect} needs an alt attribute") unless image.key?("alt")
    end

    document.css("[aria-labelledby], [aria-describedby]").each do |node|
      %w[aria-labelledby aria-describedby].each do |attribute|
        next unless node.key?(attribute)

        node[attribute].split.each do |id|
          add_error(path, "#{attribute} references missing id #{id.inspect}") unless ids.key?(id)
        end
      end
    end

    document.css("[href], [src]").each do |node|
      %w[href src].each do |attribute|
        next unless node.key?(attribute)

        validate_reference(path, attribute, node[attribute])
      end
    end
  end

  def validate_reference(source, attribute, raw_value)
    value = raw_value.to_s.strip
    if value.empty?
      add_error(source, "#{attribute} must not be empty")
      return
    end

    return if value.start_with?("//") || value.match?(/\A[a-z][a-z0-9+.-]*:/i)

    path_and_query, fragment = value.split("#", 2)
    raw_path = path_and_query.split("?", 2).first
    decoded_path = URI::DEFAULT_PARSER.unescape(raw_path)

    target = if decoded_path.empty?
               source
             elsif decoded_path.start_with?("/")
               @root.join(decoded_path.delete_prefix("/"))
             else
               source.dirname.join(decoded_path)
             end.cleanpath

    unless inside_root?(target)
      add_error(source, "#{attribute} escapes the generated site: #{value.inspect}")
      return
    end

    if decoded_path.end_with?("/") || target.directory?
      target = target.join("index.html")
    elsif target.extname.empty? && !target.file?
      target = target.join("index.html")
    end

    unless target.file?
      add_error(source, "broken local #{attribute}: #{value.inspect}")
      return
    end

    validate_fragment(source, target, fragment, value) if fragment && !fragment.empty?
  rescue URI::InvalidURIError
    add_error(source, "invalid local #{attribute}: #{value.inspect}")
  end

  def inside_root?(path)
    relative = path.relative_path_from(@root)
    relative.each_filename.first != ".."
  rescue ArgumentError
    false
  end

  def validate_fragment(source, target, fragment, original_value)
    return unless target.extname.downcase == ".html"

    document = @documents[target.cleanpath]
    document ||= Nokogiri::HTML5.parse(target.read(encoding: "UTF-8"))
    decoded_fragment = URI::DEFAULT_PARSER.unescape(fragment)
    selector = "//*[@id=#{xpath_literal(decoded_fragment)}]"
    add_error(source, "missing fragment target in #{original_value.inspect}") if document.xpath(selector).empty?
  end

  def xpath_literal(value)
    return "'#{value}'" unless value.include?("'")
    return %Q{"#{value}"} unless value.include?('"')

    parts = value.split("'").map { |part| "'#{part}'" }
    "concat(#{parts.join(%q{, "'", })})"
  end
end

site_root = ARGV.first || File.expand_path("../_site", __dir__)
SiteChecker.new(site_root).run
