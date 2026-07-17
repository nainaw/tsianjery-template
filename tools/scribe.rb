#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"
require_relative "../lib/parser"
require_relative "../lib/markdown_renderer"


if ARGV.empty?
  puts
  puts "No TSM file specified."
  exit
end

filename = ARGV[0]

text = File.read(filename)

parser = Parser.new(text)

quarter = parser.parse

renderer = MarkdownRenderer.new

markdown = renderer.render(quarter)

output_file = "output/TelovolanaII.md"

File.write(output_file, markdown)

puts
puts "Markdown written to #{output_file}"
