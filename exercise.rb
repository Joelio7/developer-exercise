class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  #Psuedocode
  # 1. split string by word boundary into array.
  # 2. loop through each element and ask each element if it's longer than four chars.
  # 3. Replace the ones that are with marklar and Marklar for ones that are capitalized.
  # 4. Join back together into a string.

  def self.marklar(str)
    string_array = str.split(/\b/)
    string_array.map! do |word|
      if word.length > 4
        unless word.capitalize == word
          word = "marklar"
        else
          word = "Marklar"
        end
      else
        word
      end
    end
   string_array.join('')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10


  #Psuedocode
  # 1. loop through range of numbers between 0 and nth
  # 2. calculate fibonachi sequence and place results in array
  # 3. sum all the even numbers inside the array.

  def self.even_fibonacci(nth)
    a = [0]
    (0..nth).each do |i|
      if i==0
        a[i] = 0
      elsif i==1
        a[i] = 1
      else
        a[i] = a[i-1] + a[i-2]
      end
    end
   a.select(&:even?).reduce(:+)
  end

end
