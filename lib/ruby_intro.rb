# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  length = arr.length()
  if length == 0
    0
  elsif length==1
     arr[0] 
  else 
     arr.sort.last(2).sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    value = false
    if arr.length >= 2
      arr1 = arr.sort
      arr2 = arr.drop(1)
      arr1.each { |outside|
        arr2.each {  |inside|
          if(n==outside+inside&&outside!=inside)
            value = true
          end
        }
      }
    end
  value
end

# Part 2

def hello(name) 
  # YOUR CODE HERE
  "Hello, " + name 
end

def starts_with_consonant? s
  # YOUR CODE HERE  value = false
  if /^[^aeiouAEIOU\W]/i.match(s) == nil
    value = false
  else
    value =  true
  end
  value
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  result = false;
  if s.count("^0-1").zero? && s.length >0
    d = s.to_i(2)
    if(d % 4 == 0)
      result = true
    end
  end
  result
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    if (@isbn.length()==0 || price <=0)
      raise(ArgumentError)
    end
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(newone) 
    @isbn = newone
  end
  
  def price=(newprice)
    @price = newprice
  end
  
  def price_as_string
    "$" + '%.2f' % @price
  end
end
