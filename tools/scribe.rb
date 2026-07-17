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

basename = File.basename(filename, ".tsm")

output_file = "output/#{basename}.md"

File.write(output_file, markdown)

puts
puts "TPS Publishing Report"
puts "---------------------"
puts "Source   : #{filename}"
puts "Lessons  : #{quarter.lesson_count}"
puts "Output   : #{output_file}"
puts
puts "Publishing completed successfully."
