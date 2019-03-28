# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  # first check for edge cases, return my_sentence
  if my_sentence[0] == "" || my_sentence == nil
    return my_sentence
  end

  length = my_sentence.length - 1
 
  #helper method to reverse characters
  def reverse_it(string)
    n = string.length - 1
    reversed_word = ""
    while n >= 0
     reversed_word += string[n]
     n-= 1
    end
    return reversed_word
  end

  str = ""
  temp = ""
  while length > 0
    if my_sentence[length] == " " #preserve each whitespace
      str += my_sentence[length]
    elsif my_sentence.length < 2 # if it's less than 2 return the object
      return my_sentence
    else
      while my_sentence[length] != " " && my_sentence[length] != nil
        temp += my_sentence[length]
        length -= 1
      end 
      length += 1
      str += reverse_it(temp)
      temp = ""
    end
      length -= 1
  end
  return str += my_sentence[0]
end

p reverse_sentence("  Taco cats UNITE  ")