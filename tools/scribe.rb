#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"
require_relative "../lib/parser"
require_relative "../lib/markdown_renderer"



manuscripts = Dir.glob("manuscripts/*.tsm")
published = 0
failed = 0
manuscripts.each do |filename|

  begin

    text = File.read(filename)

    parser = Parser.new(text)

    quarter = parser.parse

    renderer = MarkdownRenderer.new

    markdown = renderer.render(quarter)

    basename = File.basename(filename, ".tsm")

    output_file = "output/#{basename}.md"

    File.write(output_file, markdown)

    published += 1

    puts "Published #{output_file}"

  rescue => error

    puts "Failed #{filename}"
    puts error.message
    failed += 1

  end

end
puts
puts "Publishing finished."
puts "Successful: #{published}"
puts "Failed: #{failed}"