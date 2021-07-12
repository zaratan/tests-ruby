def add(a, b)
  a + b
end

def substract(a, b)
  a - b
end

def sum(arr)
  arr.sum
end

def multiply(a, b)
  a * b
end

def power(a, n)
  a**n
end

def factorial(n)
  # https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-reduce
  # (1..n) => https://ruby-doc.org/core-2.7.0/Range.html
  # 1..0.reduce(&:*) => nil
  # :* c'est un raccourci pour {|result, element| result * element}
  (1..n).reduce(:*) || 1
end
