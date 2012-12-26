
def isPrime?(value)
  for i in 2 .. (value-1)
    if ((value % i) == 0) 
	  return false
	end
  end
  return true
end

prime_counter = 1
v = 2
while (prime_counter <= 10001)
  if (isPrime?(v))
    if (prime_counter > 10000)
		puts "[#{prime_counter}]: #{v} is prime"
	end	
	prime_counter += 1
  end
  v += 1
end