class Quarter

  attr_accessor :title
  attr_accessor :subtitle
  attr_accessor :lessons

  def initialize(title, subtitle)

    @title = title
    @subtitle = subtitle
    @lessons = []

  end

  def add_lesson(lesson)

    @lessons << lesson

  end

end
