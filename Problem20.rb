
def factorial_recursive(n)
  sum = 1
  for i in (1 .. n)
    sum *= i
  end
  sum
end

input = 100
fact = factorial_recursive(input)
puts "Factorial of #{input} = #{fact}"
sum = 0
for i in (0 .. fact.to_s.length)
  sum += fact.to_s[i, 1].to_i
end
puts "Sum of that string of digits = #{sum}"
