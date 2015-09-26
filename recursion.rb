# Recursion Exercises from http://www.codequizzes.com/computer-science/recursion

def fac(n)            # factorial n!
  return 1 if n == 0
  n * fac(n-1)
end

# p fac(5) # => 120

def palindrom(string)   # check if string is a palindrom
  return false if string[0] != string[-1]
  return true if string.length == 2
  return true if string.length == 1
  palindrom(string[1..-2]) if string[0] == string[-1]
end

# p palindrom("racecar") # => true

def beer(n)  # print n times ... bottles of beer on the wall
  return "no more bottles of beer on the wall" if n == 0
  p "#{n} bottles of beer on the wall"
  beer(n-1) if n > 0
end

# p beer(3)

def fib(n)  # 0, 1, 1, 2, 3, 5, 8, 13, 21, ...  return nth number of Fibonacci sequence
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

# p fibs(6) # => 8

def flatten(array, result = [])    # flatten nested arrays
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
    else
      result << element
    end
  end 
  result
end

# p flatten([[1, 2], [3, 4]])
# p flatten([[1, [8, 9]], [3, 4]])

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

def conversion(roman_mapping, n, roman = "")   # convert integer so roman numeral
  return roman if n == 0
  roman_mapping.each do |key, value|
    if n - key >= 0
      roman << value 
      n = n - key
      break
    end
  end
  conversion(roman_mapping, n, roman)
end

# p conversion(roman_mapping, 1234) # => MCCXXXXIV

roman_mapping2 = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def conversion2(roman_mapping2, n, number = 0)    # convert roman numeral to integer
  return number if n.empty?
  roman_mapping2.each do |key, value|
    if n[0] == key || n[0..1] == key
      n.slice!(key)
      number = number + value
      break
    end
  end
  conversion2(roman_mapping2, n, number)
end

# p conversion2(roman_mapping2, "MCCXXXIV") # => 1234

