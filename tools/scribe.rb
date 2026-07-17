#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"
require_relative "../lib/parser"
require_relative "../lib/markdown_renderer"



manuscripts = Dir.glob("manuscripts/*.tsm")
manuscripts.each do |filename|

  text = File.read(filename)

  parser = Parser.new(text)

  quarter = parser.parse

  renderer = MarkdownRenderer.new

  markdown = renderer.render(quarter)

  basename = File.basename(filename, ".tsm")

  output_file = "output/#{basename}.md"

  File.write(output_file, markdown)

  puts "Published #{output_file}"

end
