# This project is to train using recursive methods

# method to output factorial of a number n!
def factorial(n)
  if n == 0
    return 1
  else 
    n * factorial(n-1)
  end
end

# puts factorial(5)

# method to return true if input is palindrome or not
def palindrome(word)
  # base case
  return true if word.length <= 1
  # recursive case
  if word[0] == word[-1]
    palindrome(word[1..-2])
  else
    return false
  end
end

# puts palindrome('racecar')

# method to print number and then return n-1 each time
def beer_bottles(n)
  # base case
  return 0 if n <= 0
  # recursive case
  if n > 0
    puts "beer bottles: #{n}"
    beer_bottles(n-1)
  end
end

# beer_bottles(5)

# method to return result of fibonacci sequence
def fibonacci(n)
  # base case
  return 0 if n == 0
  return 1 if n == 1
  # recursive case
  if n > 1
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# puts fibonacci(5)

=begin
Analogy:
Think of it like unpacking nested boxes:
If you open a box and find a number: great! Put it in your result bag.
If you open a box and find more boxes: recursively 
open each until all contents are out.
.push (or <<) would push the entire box to flat, not what you want!
.concat pushes item by item, what you want!
=end

# method to flatten an array, thus making the array 1D
def flatten_array(arr)
  flat = []
  arr.each do |item|
    if item.is_a?(Array)
      flat.concat(flatten_array(item))
    else
      flat << item
    end
  end
  return flat
end

p flatten_array([[1, 2], [3, 4]])