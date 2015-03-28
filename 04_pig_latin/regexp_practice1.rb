def translate (input)
  puts input+ "\n\n"

  vowels = %w{a e i o u}

  input.gsub(/(\A|\s)\w+/) do |str|
    str.strip!
    puts str + "end"
    while not vowels.include? str[0] or (str[0] == 'u' and str[-1]== 'q')
      puts str + " str"
      puts str[0] + " str[0]"
      str += str[0]
      puts str
      str = str[1..-1]
      puts str
    end
    str = ' ' + str + 'ay'
    puts str
  end.strip


end

translate('apple')
translate('banana')
translate('cherry')
translate('eat pie')
translate('three')
translate('school')
translate('quiet')
translate('square')
translate('the quick brown fox')