#!/usr/bin/env ruby

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

puts
puts "Reading: #{filename}"
puts

text = File.read(filename)

puts text
