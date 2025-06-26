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

beer_bottles(5)