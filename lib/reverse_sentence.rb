require "pry"
# A method to reverse the words in a sentence, in place.
# Time complexity: On
# Space complexity: O
def reverse_sentence(my_sentence)
 unless my_sentence == nil
  temp = string_reverse(my_sentence)
  temp_sentence = reverse_words(temp)
  return temp_sentence
 end
end

def string_reverse(my_string)
  if my_string == nil
    return false
  end
  length = my_string.length
  i = 0
  j = length - 1
  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length == 0
  
  i = 0
  l = my_words.length
  start_char = 0
  finish_char = 0
  
  while i < l 
    while my_words[i] == " "
      i += 1
    end
    start_char = i
    while my_words[i] != " " && i < l
      i += 1 
    end
    finish_char = (i -1) 
    while start_char < finish_char
        temp = my_words[start_char]
        my_words[start_char] = my_words[finish_char]
        my_words[finish_char] = temp
        start_char += 1
        finish_char -= 1
    end
  end
  return my_words
end 
