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
method to flatten an array, thus making the array 1D
Analogy:
Think of it like unpacking nested boxes:
If you open a box and find a number: great! Put it in your result bag.
If you open a box and find more boxes: recursively 
open each until all contents are out.
.push (or <<) would push the entire box to flat, not what you want!
.concat pushes item by item, what you want!
=end
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

# p flatten_array([[1, 2], [3, 4]])

=begin
method to change integer to roman number
hash map roman_mapping was given
input number -> roman number
example:
n = 1954 -> MCMLIV
=end

def to_roman(n)
  roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  # base case
  return '' if n == 0

  # recursive case
  roman_mapping.each do |key, value|
    if key <= n
      return value + to_roman(n - key)
    end
  end
end

# puts to_roman(2878)

=begin
method to convert roman number to integer
the logic here is that n.start_with?(key)
checks if the input roman starts with any of the hash keys
then it does a recursive call
but the n in this case will be smaller
split the n with the found key in the hash
keep calling until n.empty? is true
=end
def roman_to_integer(n)
  roman_mapping = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  # base case
  return 0 if n.empty?

  # recursive case
  roman_mapping.each do |key, value|
    if n.start_with?(key)
      return value + roman_to_integer(n[key.length..-1])
    end
  end
end

# puts roman_to_integer('MCMLIV')