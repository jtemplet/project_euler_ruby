
def isPrime?(value)
  #for i in 2 .. (value-1)
  if ((value != 2) && ((value%2) == 0))
    return false
  end
  if ((value != 3) && ((value%3) == 0))
    return false
  end
  if ((value != 5) && ((value%5) == 0))
    return false
  end
  
  for i in 2 .. (Math.sqrt(value))
    if ((value % i) == 0) 
	  return false
	end
  end
  return true
end

prime_counter = 1
sum = 0
v = 2
while (v <= 2000000)
  if (isPrime?(v))
    #if (prime_counter > 1999999)
	#	puts "[#{prime_counter}]: #{v} is prime"
	#end	
	#prime_counter += 1
	sum += v
  end
  v += 1
end
puts "Sum = #{sum}"