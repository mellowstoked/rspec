def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  if n == 2
    string.prepend(string + " ")
  elsif n > 2
    newString = string * n
    i = 1
    spot = string.length
    while i < n || spot < newString.length
      if i == 1
        newString.insert(spot, " ")
        spot += 6
      elsif i > 1
        newString.insert(spot, " ")
        spot += 6
      end
      i +=1
    end
    return newString
  end
end

def start_of_word(string, n)
  newString = string[n - 1]

  while n > 1
    n -= 1
    newString.prepend(string[n - 1])
  end
  return newString
end

def first_word string
  newString = string.partition(" ")
  return newString[0]
end

def titleize string
  stopWords = %w{and over the}
  string.split.each_with_index.map{|word, index| stopWords.include?(word) && index > 0 ? word : word.capitalize}.join(" ")
end