def translate string
  vowels = %w{a e i o u}
  prefix = %w{ch thr sch qu squ br th}

  words = Array.new
  words = string.split(" ") # store the string into substrings based on a delimets, returning an array of these substrings

  #words.each { |i| puts i}
  prefixArray = Array.new # memory allocation fo  string with twp prefixes
  j = 0



#wrap this in a loop to iterate through an array
#while there the array includes items loop through and calculate

 words.each do |i|
   #Since the prefix is assumed to be two characters I will iterate through the array and store
  #them into the array prefix Array, only do this when string includes the prefix.
  if i.include?("ch")
    if i.include?("sch")
      3.times do
        prefixArray.push(i[j])
        j+=1
      end
    else
      2.times do
        prefixArray.push(i[j])
        j += 1
      end
    end
  elsif i.include? "th"
    if i.include? "thr"
      3.times do
        prefixArray.push(i[j])
        j+=1
      end
    else
      2.times do
        prefixArray.push(i[j])
        j+=1
      end
    end
  elsif i.include? "qu"
    if i.include? "squ"
      3.times do
        prefixArray.push(i[j])
        j+=1
      end
    else
      2.times do
        prefixArray.push(i[j])
        j+=1
      end
    end
  elsif i.include? "br"
    2.times do
      prefixArray.push(i[j])
      j+=1
    end
  end

  newPrefix = prefixArray.join
  newString = Array.new


  if vowels.include?(i[0])
    i.insert(i.length, 'ay')
    newString.push(i)
  elsif prefix.include?(newPrefix)
    if newPrefix.include?("ch")
      if newPrefix.include? "sch"
        i.slice!(0..2)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      else
        i.slice!(0..1)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      end
    elsif newPrefix.include?("th")
      if newPrefix.include? "thr"
        i.slice!(0..2)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      else
        i.slice!(0..1)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      end
    elsif newPrefix.include? "qu"
      if newPrefix.include? "squ"
        i.slice!(0..2)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      else
        i.slice!(0..1)
        i.insert(i.length, newPrefix + 'ay')
        newString.push(i)
      end
    elsif newPrefix.include? "br"
      i.slice!(0..1)
      i.insert(i.length, newPrefix + 'ay')
      newString.push(i)
    else
      letter = i[0]
      i.slice!(0)
      i.insert(i.length, letter + 'ay')
      newString.push(i)
    end
  string = newString.join(" ")
end
  return string
end

