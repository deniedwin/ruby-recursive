# This project is to train recursive methods
def factorial(n)
  if n == 0
    return 1
  else 
    n * factorial(n-1)
  end
end

# puts factorial(5)

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

puts palindrome('racecar')