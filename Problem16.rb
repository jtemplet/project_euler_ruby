def add_digits(digits)
  sum = 0
  for n in (0 .. digits.length-1)
    s = digits[n].chr.to_i
    sum += s
  end
  return sum
end

value = 2 ** 1000

puts "exp = #{value}"
sum = add_digits(value.to_s)
puts "Sum = #{sum}"
