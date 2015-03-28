=begin
 Alpha = ('a'..'z').to_a
def translate string
  vowels = %w[a e i o u]
  consonant = Alpha - vowels

  if vowels.include?(string[0])
    string + 'ay'
  elsif consonant.include?(string[0]) && consonant.include?(string[1])
    string[2..-1] + string[0..1] + 'ay'
  elsif consonant.include?(string[0])
    string[1..-1]+ string[0..0] + 'ay'
  end
end
=end
def translate (input)
    vowels = %w{a e i o u}

    input.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip

end