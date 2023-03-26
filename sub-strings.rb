#!ruby

def sub_strings string, dictionaryArray
  result = Hash.new(0)
  lower_string = string.downcase

  dictionaryArray.each do |word|
    matches = lower_string.scan(word).length
    result[word] = matches unless matches == 0
  end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_strings("belowbelowlowlowlowbelow klok low below low", dictionary)
