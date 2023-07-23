# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr != []
    return arr.sum
  end
  return 0
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr != []
    if arr.length != 1
      max_2_arr = arr.max(2)
      return max_2_arr.sum
    else
      return arr[0]
    end
  end
  return 0
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr != []
    if arr.length != 1
      for i in 0..arr.length-1 do
        for j in i+1..arr.length-1 do
            if arr[i]+arr[j] == n
                return true
            end
        end
      end
    else
      return false
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowel = /[aeiou]/i
  if vowel.match(s[0]) == nil && s.count("a-zA-Z") == s.length && s != ''
    return true
  else
    return false
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.to_i(10)%4 == 0 && s != '' && s.count('01') == s.length
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    if @isbn == ''
      raise ArgumentError 
    elsif @price <= 0
      raise ArgumentError 
    else
      return "$#{sprintf('%.2f', @price)}"
    end
  end
end
