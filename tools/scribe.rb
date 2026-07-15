#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"
require_relative "../lib/parser"

puts "===================================="
puts " Scribe"
puts " Tsianjery Publishing System"
puts "===================================="

if ARGV.empty?
  puts
  puts "No TSM file specified."
  exit
end

filename = ARGV[0]

text = File.read(filename)

parser = Parser.new(text)

parser.parse
