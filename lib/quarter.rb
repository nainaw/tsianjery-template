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
  
  def lesson_count
    
  @lessons.length
    
  end

  def to_s

    output = <<~TEXT
      Quarter
      -------
      Title    : #{@title}
      Subtitle : #{@subtitle}
      Lessons  : #{lesson_count}
    TEXT

    unless @lessons.empty?

      output << "\n"

      @lessons.each_with_index do |lesson, index|

        output << "#{index + 1}. #{lesson.title}\n"

        unless lesson.verse.empty?
          output << "#{lesson.verse}\n"
        end

        unless lesson.reference.empty?
          output << "#{lesson.reference}\n"
        end

        output << "\n"

      end

    end

    output

  end
  
end
