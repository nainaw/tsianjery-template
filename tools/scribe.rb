#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"
require_relative "../lib/parser"


if ARGV.empty?
  puts
  puts "No TSM file specified."
  exit
end

filename = ARGV[0]

text = File.read(filename)

quarter = parser.parse

puts
puts quarter
