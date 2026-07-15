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

# ------------------------------------
# Quarter
# ------------------------------------

header = parts[0].strip
lessons = parts[1].strip

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

# ------------------------------------
# Lessons
# ------------------------------------

lesson_blocks = lessons.split(/^-+$/)

puts "Number of lessons: #{lesson_blocks.length}"
puts

lesson_blocks.each_with_index do |lesson_text, index|

  paragraphs = lesson_text.strip.split(/\n\s*\n/)

  title = paragraphs.first
  reference = paragraphs.last
  verse = paragraphs[1...-1].join("\n\n")

  lesson = Lesson.new(
    title,
    verse,
    reference
  )

  quarter.add_lesson(lesson)

  puts "========== Lesson #{index + 1} =========="
  puts

  puts "Title:"
  puts lesson.title
  puts

  puts "Verse:"
  puts lesson.verse
  puts

  puts "Reference:"
  puts lesson.reference
  puts

end

# ------------------------------------
# Summary
# ------------------------------------

puts
puts "=================================="
puts "Quarter Summary"
puts "=================================="
puts

puts "Title    : #{quarter.title}"
puts "Subtitle : #{quarter.subtitle}"
puts "Lessons  : #{quarter.lessons.length}"
