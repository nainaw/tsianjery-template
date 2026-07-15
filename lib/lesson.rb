class Lesson

  attr_accessor :title
  attr_accessor :verse
  attr_accessor :reference

  def initialize(title, verse, reference)

    @title = title
    @verse = verse
    @reference = reference

  end

def to_s
  
  "#{@title} (#{@reference})"
  
end
  
end
