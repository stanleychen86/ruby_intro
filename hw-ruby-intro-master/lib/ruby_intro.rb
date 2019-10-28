# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  	if arr.length == 0 
		return 0
	end
	s = 0
	for a in arr
		s += a
	end
	return s
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
  	return 0
  end

  if arr.length == 1
  	return arr[0]
  end

  size1 = arr.length
  mx1 = arr.max
  arr.delete(mx1)
  size2 = arr.length
  if size1 >= size2 + 2
  	return mx1 * 2
  end
  
    mx2 = arr.max
  return mx1 + mx2

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index do |num, index|
    rest = n - num
    rest_index = arr[(index + 1)..-1].index(rest)
    return true if rest_index
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
  	return false
  end

  if s[0] == 'B' 
  	return true
  end
  if s[0] == 'C' 
  	return true
  end
  if s[0] == 'D' 
  	return true
  end
  if s[0] == 'F' 
  	return true
  end
  if s[0] == 'G' 
  	return true
  end
  if s[0] == 'H' 
  	return true
  end
  if s[0] == 'J' 
  	return true
  end
  if s[0] == 'K' 
  	return true
  end
  if s[0] == 'L' 
  	return true
  end
  if s[0] == 'M' 
  	return true
  end
  if s[0] == 'N' 
  	return true
  end
  if s[0] == 'P' 
  	return true
  end
  if s[0] == 'Q' 
  	return true
  end
  if s[0] == 'R' 
  	return true
  end
  if s[0] == 'S' 
  	return true
  end
  if s[0] == 'T' 
  	return true
  end
  if s[0] == 'V' 
  	return true
  end
  if s[0] == 'W' 
  	return true
  end
  if s[0] == 'X' 
  	return true
  end
  if s[0] == 'Y' 
  	return true
  end
  if s[0] == 'Z' 
  	return true
  end
  if s[0] == 'b' 
  	return true
  end
  if s[0] == 'c' 
  	return true
  end
  if s[0] == 'd' 
  	return true
  end
  if s[0] == 'f' 
  	return true
  end
  if s[0] == 'g' 
  	return true
  end
  if s[0] == 'h' 
  	return true
  end
  if s[0] == 'j' 
  	return true
  end
  if s[0] == 'k' 
  	return true
  end
  if s[0] == 'l' 
  	return true
  end
  if s[0] == 'm' 
  	return true
  end
  if s[0] == 'n' 
  	return true
  end
  if s[0] == 'p' 
  	return true
  end
  if s[0] == 'q' 
  	return true
  end
  if s[0] == 'r' 
  	return true
  end
  if s[0] == 's' 
  	return true
  end
  if s[0] == 't' 
  	return true
  end
  if s[0] == 'v' 
  	return true
  end
  if s[0] == 'w' 
  	return true
  end
  if s[0] == 'x' 
  	return true
  end
  if s[0] == 'y' 
  	return true
  end
  if s[0] == 'z' 
  	return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  n = s.length

 s.each_char{
 	|c| 
 	if c != '0' && c != '1'
 		return false
 	end
 }

  if s.length == 0
  	return false
  end

  if s.length == 1 
  	if s[0] == '0'
  		return true
  	end
  end

  if (s[n-1] == '0' and s[n-2] == '0')
  	return true
  end

  return false

end

# Part 3

class BookInStock
   attr_reader :isbn
   attr_accessor :price
  
   #getters and setters are for the two variables are defined below
  
   def isbn #getter method for isbn
       @isbn
   end

   def isbn=(isbn) #setter method for isbn
       @isbn = isbn
   end

   def price #getter method for price
       @price
   end

   def price=(price) #setter method for price
       @price = Float(price)
   end

   def initialize(isbn, price)
       raise ArgumentError if isbn.empty? || price <= 0
       @isbn = isbn
       @price = Float(price)
   end
   
   def price_as_string

		format("$%.2f", @price)

   end

end


