class Book
  def title=(input) # setter method title= set the attribute = to the instance variable
    little_words = ['and', 'the', 'in', 'of', 'a', 'an']
    title = input.split(' ').map {|word| little_words.include?(word) ? word : word.capitalize}.join(' ') # ternary operator ? then : else
    title[0] = title[0].upcase
    @title = title
  end

  def title
    @title
  end
end