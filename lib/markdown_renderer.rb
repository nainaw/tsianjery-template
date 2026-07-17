class MarkdownRenderer

  def render(quarter)

    lines = []

    lines << "# #{quarter.title}"
    lines << ""
    lines << quarter.subtitle
    lines << ""

    quarter.lessons.each_with_index do |lesson, index|

      lines << "## #{index + 1}. #{lesson.title}"
      lines << ""
      lines << lesson.verse
      lines << ""
      lines << "*#{lesson.reference}*"
      lines << ""

    end

    lines.join("\n")

  end

end