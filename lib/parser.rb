class Parser

  def initialize(text)

    @text = text

  end

 def parse

  quarter = Quarter.new(
    "TEST QUARTER",
    "Parser prototype"
  )

  quarter

end

end
