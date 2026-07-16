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

    Quarter.new(
      title,
      subtitle.join("\n")
    )

  end

end
