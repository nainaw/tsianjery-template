#!/usr/bin/env ruby

require_relative "../lib/lesson"
require_relative "../lib/quarter"

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

parts = text.split(/^=+$/)

if parts.length != 2
  puts
  puts "ERROR:"
  puts "The manuscript must contain exactly one line of '=' characters."
  exit 1
end

header = parts[0].strip
header_lines = header.lines.map(&:strip).reject(&:empty?)

quarter_title = header_lines[0]
quarter_subtitle = header_lines[1]

quarter = Quarter.new(
  quarter_title,
  quarter_subtitle
)
puts
puts "===== QUARTER HEADER ====="
puts
puts header

puts

lesson_blocks = lessons.split(/^-+$/)

puts "Number of lessons: #{lesson_blocks.length}"

puts

lesson_blocks.each_with_index do |lesson, index|

  paragraphs = lesson.strip.split(/\n\s*\n/)

  title = paragraphs.first

  reference = paragraphs.last

  verse = paragraphs[1...-1].join("\n\n")

  puts "========== Lesson #{index + 1} =========="

  puts

  puts "Title:"
  puts title

  puts

  puts "Verse:"
  puts verse

  puts

  puts "Reference:"
  puts reference

  puts
end
