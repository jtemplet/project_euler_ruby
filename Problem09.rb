
def sumEqual?(a, b, c)
  if ((a + b + c) == 1000)
    return true
  end
  return false
end

def solveForC(a, b)
  #puts "A = #{a}, B = #{b}"
  a = a * a;
  b = b * b
  c = a + b
  c = Math.sqrt(c)  
  return c
end

for b in (2 .. 999)
  for a in (1 .. b)
    c = solveForC(a, b)	
	if (sumEqual?(a, b, c))
	  puts "Found it! #{a} #{b} #{c}"
	end
  end
end