class Parser

  def initialize(text)
    @text = text
  end

  def parse

    lines = @text.lines.map(&:chomp)
    lines.reject! { |line| line.strip.empty? }

    title = lines.shift

    subtitle = []

    until lines.empty?

      line = lines.shift

      break if line.match?(/^=+$/)

      subtitle << line

    end

    quarter = Quarter.new(
      title,
      subtitle.join("\n")
    )

    parse_lessons(lines, quarter)

    quarter

  end

  private

  def parse_lessons(lines, quarter)

    lesson_lines = []

    lines.each do |line|

      if line.match?(/^-+$/)
        title = lesson_lines.first
        verse = lesson_lines[1...-1].join("\n")
        reference = lesson_lines.last
        quarter.add_lesson(
          Lesson.new(
            title,
            verse,
            reference
          )
        )

        lesson_lines.clear

      else

        lesson_lines << line

      end

    end

  end

end
