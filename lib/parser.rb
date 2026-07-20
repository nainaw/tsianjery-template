class Parser

  def initialize(text)
    @text = text
  end

  def parse

    lines = @text.lines.map(&:chomp)
    lines.reject! { |line| line.strip.empty? }

    title = lines.shift
    raise "Missing manuscript title." if title.nil? || title.strip.empty?

    subtitle = []

    found_separator = false
    until lines.empty?

      line = lines.shift

      if line.match?(/^=+$/)
        found_separator = true
        break
      end

      subtitle << line

    end

    # raise "Missing header separator." unless found_separator

    quarter = Quarter.new(
      title,
      subtitle.join("\n")
    )
    
    # raise "Missing manuscript subtitle." if quarter.subtitle.strip.empty?
    parse_lessons(lines, quarter)

    # raise "No lessons found." if quarter.lessons.empty?
    validate(quarter, found_separator)

    quarter

  end

  private

  def parse_lessons(lines, quarter)

    lesson_lines = []

    lines.each do |line|

      if line.match?(/^-+$/)
        quarter.add_lesson(
          build_lesson(lesson_lines)
        )

        lesson_lines.clear

      else

        lesson_lines << line

      end

    end

  end
  def build_lesson(lesson_lines)

    title = lesson_lines.first
    verse = lesson_lines[1...-1].join("\n")
    reference = lesson_lines.last

    raise "Lesson title is missing." if title.nil? || title.strip.empty?

    raise "Lesson verse is missing." if verse.strip.empty?

    raise "Lesson reference is missing." if reference.nil? || reference.strip.empty?

    Lesson.new(
      title,
      verse,
      reference
    )

  end
  def validate(quarter, found_separator)

    raise "Missing manuscript subtitle." if quarter.subtitle.strip.empty?

    raise "Missing header separator." unless found_separator

    raise "No lessons found." if quarter.lessons.empty?

  end

end
