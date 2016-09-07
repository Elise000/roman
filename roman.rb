require 'byebug'

def to_roman(num)

  roman = ""
  arr = []
  sym = ["M", "CM", "D","CD","C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  div =[1000,900,500,400,100,90,50,40,10,9,5,4,1]
  left  = num

  div.each do |divider|
    byebug
    write = left / divider # How many thousands left
    arr << write
    left  = left % divider  # Subtract off those hundreds.
  end

  output_string = ""
  arr.each_with_index do | magnitude, index |
    output_string << sym[index]*magnitude
  end

  output_string
end


# Drive code... this should print out trues.

# puts to_roman(5432) == "MMMMMCDXXXII"
# puts to_roman(3) == "III"
puts to_roman(6) == "VI"