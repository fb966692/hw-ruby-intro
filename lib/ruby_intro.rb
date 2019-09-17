# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  solution = 0
  
  
  arr.each { |item|
    solution = solution + item
  }
  
  return solution

end

def max_2_sum arr
  # YOUR CODE HERE
  
  largest1 = -100
  largest2 = -100
  solution = 0
  
  index = 0
  i = 0
  arr.each { |item|
    if item > largest1
        largest1 = item
        index = i
    end
    i = i + 1
  }
  
  i = 0
  arr.each { |item|
    if item > largest2 and item <= largest1 and i != index
        largest2 = item
    end
    i = i + 1
  }
    
    if largest1 == -100
        largest1 = 0
    end
    
    if largest2 == -100
        largest2 = 0
    end
    
   solution = largest1 + largest2
   
   return solution
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  i = 0
  arr.each { |item|
  complement = n - item
    j = 0
    arr.each { |item2| 
        if (complement - item2) == 0 and j != i
            return true
        end
        j = j + 1
    }
    i = i + 1
  }
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  s = "Hello, "
  s.concat(name)
  return s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0,1] == 'A' or s[0,1] == 'a' or s[0,1] == 'E' or s[0,1] == 'e' or s[0,1] == 'I' or s[0,1] == 'i' or s[0,1] == 'O' or s[0,1] == 'o' or s[0,1] == 'U' or s[0,1] == 'u'
    return false
  end
  if s == ""
    return false
  end
  if s.match(/^[[:alpha:][:blank:]]+$/)
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not s.match(/^[[1][0]]+$/)
    return false
  end  
  
  x = s.to_i(2)
  if x % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
