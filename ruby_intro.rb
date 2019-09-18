# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
 (0..arr.length-1).any? do |i| 
    arr[i+1..-1].any? { |x| x + arr[i] ==n }
  end
end

# Part 2

def hello(name)
  return 'Hello, '+name
end

def starts_with_consonant? s
  if(s[0] =~ /[^aeiou\W]/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s.length == 1 and s[0]=='0')
    return true
  end
  if (s.match(/^[10]*00$/))
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    self.isbn = isbn
    self.price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
