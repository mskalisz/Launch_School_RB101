=begin
Given an array of strings made only from lowercase letters, return an array 
of all characters that show up in all strings within the given array 
(including duplicates). For example, if a character occurs 3 times in all 
strings but not 4 times, you need to include that character three times in 
the final answer.

# Problem
- Given an array of strings, iterate through each of the characters of
each of the strings
- Sort the characters
- Compare characters
- Add any that are the same to a results array

Input: Array
Output: new array

Array, string

Algo
- Create an empty results array
- Given an array of strings
  - Split the first string into its respective characters
  - Iterate through the first string's characters
  - Check if all of the strings in the original array include that character
    - If yes, add it to the results array
      - Delete one instance of the common character from each string
    - If not, continue the iteration
- Return the results array



def common_chars(array_of_strings)
  results = []
  comparison_string = array_of_strings[0]
  comparison_string.chars.each do |character|
    if array_of_strings.all?{|string| string.include?(character)}
      results << character
    end
    array_of_strings.each {|string| string.delete!(character)}
  end
  puts results
  results
end
=end

def common_chars(array_of_strings)
  results = []
  comparison_array = array_of_strings[0].chars
  array_of_strings.delete(array_of_strings[0])
  loop do
    p comparison_letter = comparison_array.shift
      if array_of_strings.all?{|string| string.include?(comparison_letter)}
        results << comparison_letter
        array_of_strings.each {|string| string.delete!(comparison_letter)}
      end
      p array_of_strings
    break if comparison_array.empty?
  end
    puts results
    results
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []