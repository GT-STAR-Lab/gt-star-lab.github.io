# frozen_string_literal: true

require "date"
require "optparse"
require "yaml"

ROOT = File.expand_path("..", __dir__)
VALID_TYPES = %w[paper member].freeze
VALID_LEVELS = %w[faculty grad undergrad].freeze

def prompt(label, default: nil, required: false)
  loop do
    suffix = default.nil? ? "" : " [#{default}]"
    print "#{label}#{suffix}: "
    input = $stdin.gets
    abort "\nCancelled." if input.nil?

    value = input.strip
    value = default.to_s if value.empty? && !default.nil?
    return value unless required && value.empty?

    warn "Please enter a value."
  end
end

def prompt_yes_no(label, default: false)
  hint = default ? "Y/n" : "y/N"

  loop do
    print "#{label} [#{hint}]: "
    input = $stdin.gets
    abort "\nCancelled." if input.nil?

    value = input.strip.downcase
    return default if value.empty?
    return true if %w[y yes].include?(value)
    return false if %w[n no].include?(value)

    warn "Please answer yes or no."
  end
end

def slugify(value)
  ascii = value.unicode_normalize(:nfkd).encode(
    Encoding::ASCII,
    invalid: :replace,
    undef: :replace,
    replace: ""
  )
  slug = ascii.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-+|-+\z/, "")
  abort "Could not create a filename from that title." if slug.empty?

  slug
end

def optional_prompt(label, default: nil)
  value = prompt(label, default: default)
  value.empty? ? nil : value
end

def compact_fields(fields)
  fields.reject { |_key, value| value.nil? || (value.respond_to?(:empty?) && value.empty?) }
end

def paper_details(date)
  title = prompt("Paper title", required: true)
  slug = slugify(title)
  year_value = prompt("Publication year", default: date.year, required: true)

  until year_value.match?(/\A\d{4}\z/)
    warn "Enter a four-digit year."
    year_value = prompt("Publication year", default: date.year, required: true)
  end

  fields = compact_fields(
    "layout" => "paper",
    "title" => title,
    "image" => prompt("Thumbnail path", default: "/papers/images/#{slug}.png", required: true),
    "authors" => prompt("Authors (comma separated)", required: true),
    "year" => year_value.to_i,
    "ref" => prompt("Short citation", required: true),
    "journal" => prompt("Venue", required: true),
    "arxiv" => optional_prompt("arXiv ID (optional)"),
    "pdf" => optional_prompt("PDF URL or site path (optional)"),
    "github" => optional_prompt("GitHub owner/repository (optional)"),
    "supplement" => optional_prompt("Project website (optional)")
  )

  body = <<~MARKDOWN
    ## Abstract

    <!-- Replace this comment with the paper abstract. -->
  MARKDOWN

  [fields, body, File.join(ROOT, "papers", "_posts", "#{date}-#{slug}.md")]
end

def member_details(date)
  title = prompt("Member name", required: true)
  slug = slugify(title)
  level = prompt("Level (faculty, grad, or undergrad)", default: "grad", required: true).downcase

  until VALID_LEVELS.include?(level)
    warn "Choose faculty, grad, or undergrad."
    level = prompt("Level", default: "grad", required: true).downcase
  end

  default_position = {
    "faculty" => "Assistant Professor",
    "grad" => "MS Student",
    "undergrad" => "BS Student"
  }.fetch(level)
  alumni = prompt_yes_no("Is this person an alumnus?")
  co_advised = prompt_yes_no("Is this person co-advised?")

  fields = compact_fields(
    "layout" => "member",
    "title" => title,
    "level" => level,
    "position" => prompt("Position", default: default_position, required: true),
    "image" => prompt("Profile image path", default: "/team/images/#{slug}.jpg", required: true),
    "email" => optional_prompt("Email (optional)"),
    "github" => optional_prompt("GitHub username (optional)"),
    "website" => optional_prompt("Personal website (optional)"),
    "linkedin" => optional_prompt("LinkedIn URL (optional)"),
    "scholar" => optional_prompt("Google Scholar user ID (optional)"),
    "note" => optional_prompt("Short note, such as a fellowship (optional)"),
    "co_advised" => co_advised ? true : nil,
    "co_advisor" => co_advised ? prompt("Co-advisor", required: true) : nil,
    "alumni" => alumni ? true : nil,
    "next_position" => alumni ? optional_prompt("Next position (optional)") : nil
  )

  body = "<!-- Replace this comment with a short biography. -->\n"
  [fields, body, File.join(ROOT, "team", "_posts", "#{date}-#{slug}.md")]
end

options = { date: Date.today, dry_run: false }
parser = OptionParser.new do |opts|
  opts.banner = "Usage: ruby scripts/new_content.rb TYPE [options]\n\nTYPE is paper or member."
  opts.on("--date YYYY-MM-DD", "Use a specific post date") do |value|
    options[:date] = Date.iso8601(value)
  rescue Date::Error
    raise OptionParser::InvalidArgument, "date must use YYYY-MM-DD"
  end
  opts.on("--dry-run", "Preview the file without creating it") { options[:dry_run] = true }
  opts.on("-h", "--help", "Show this help") do
    puts opts
    exit
  end
end

parser.parse!
type = ARGV.shift
abort parser.to_s unless VALID_TYPES.include?(type) && ARGV.empty?

fields, body, destination = type == "paper" ? paper_details(options[:date]) : member_details(options[:date])
document = "#{YAML.dump(fields).rstrip}\n---\n\n#{body}"
relative_destination = destination.delete_prefix("#{ROOT}#{File::SEPARATOR}").tr("\\", "/")

if options[:dry_run]
  puts "\nWould create #{relative_destination}:\n\n#{document}"
  exit
end

abort "#{relative_destination} already exists; no file was changed." if File.exist?(destination)

File.open(destination, "w:UTF-8") { |file| file.write(document) }
puts "Created #{relative_destination}"
puts "Add the referenced image, replace the placeholder text, then run the website checks."
