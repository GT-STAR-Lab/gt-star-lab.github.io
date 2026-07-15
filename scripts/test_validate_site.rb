# frozen_string_literal: true

require "fileutils"
require "open3"
require "rbconfig"
require "tmpdir"

VALIDATOR = File.expand_path("validate_site.rb", __dir__)

def write_page(root, relative_path, body)
  path = File.join(root, relative_path)
  FileUtils.mkdir_p(File.dirname(path))
  File.write(path, body, encoding: "UTF-8")
end

def page(body)
  <<~HTML
    <!doctype html>
    <html lang="en">
      <head>
        <meta name="description" content="Validator regression fixture">
        <title>Validator fixture</title>
      </head>
      <body>
        <main>
          <h1>Validator fixture</h1>
          #{body}
        </main>
      </body>
    </html>
  HTML
end

def run_validator(root)
  Open3.capture3(RbConfig.ruby, VALIDATOR, root)
end

Dir.mktmpdir("star-site-validator-") do |root|
  write_page(
    root,
    "index.html",
    page(<<~HTML)
      <div id="main-content">Main content</div>
      <a href="#main-content">Fragment-only link</a>
      <a href="#">Empty fragment link</a>
      <a href="?view=compact#main-content">Query and fragment link</a>
      <a href="/about/">About</a>
      <img src="/images/example.svg" alt="Example">
    HTML
  )
  write_page(root, "about/index.html", page('<a href="/">Home</a>'))
  write_page(root, "images/example.svg", '<svg xmlns="http://www.w3.org/2000/svg"></svg>')

  stdout, stderr, status = run_validator(root)
  unless status.success?
    warn stdout
    warn stderr
    abort "Expected the valid fixture to pass"
  end

  write_page(root, "about/index.html", page('<a href="/missing/">Missing page</a>'))
  _stdout, stderr, status = run_validator(root)
  abort "Expected the broken fixture to fail" if status.success?
  abort "Expected a useful broken-link error" unless stderr.include?('broken local href: "/missing/"')

  write_page(root, "about/index.html", page('<a href="/bad%00path">Invalid path</a>'))
  _stdout, stderr, status = run_validator(root)
  abort "Expected the invalid fixture to fail" if status.success?
  abort "Expected a useful invalid-link error" unless stderr.include?('invalid local href: "/bad%00path"')
end

puts "Generated-site validator regression tests passed."
