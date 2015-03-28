def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  sum = 0
  if array.length > 0
    array.each {|a| sum += a}
    return sum
  else
    return 0
  end
end

def multiply(*numbers)
  numbers.inject(1) {|sum, number| sum * number}
end

def power(x, y)
  x**y
end

def factorial(number)
  (1..number).inject(:*) || 1
end

