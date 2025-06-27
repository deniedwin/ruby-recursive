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
n = 1954 -> M CM L IV
roman = ''
base = 1000
n / base = 1,..
n % base = 954
1,.. * base = 1000
1000 in map? yes -> 'M'
roman.push('M')
n = 954
base /= 10

n / base = 9,..
n % base = 54
9,.. * base = 900
900 in map? yes -> 'CM'
roman.push('CM')
n = 54
base /= 10
etc..
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

puts to_roman(2878)