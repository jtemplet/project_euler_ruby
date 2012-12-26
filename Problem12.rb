require 'set'

def get_triangle_num(x)
  sum = 0
  for i in (1 .. x)
    sum += i
  end
  return sum
end

def factor(seed) 
		div = 2;
		prod = seed;
	  s = Set.new
    a = Array.new
	
		while (div < prod) 
			if ((prod%div) == 0) 
				prod = prod/div;
        s << prod
        a << prod
				puts("Factored into " + prod.to_s + " and " + div.to_s);
				if (div > prod) 
					prod = div;
					div += 1;
		    end
	    else
				div += 1;
	    end
  end
  #puts s
  return a.size;
end

def get_divisors(x)
  #s = Set.new
  #divisors = Array.new
  counter = 0
  max = Math.sqrt(x).round + 1
  #max = ((x/2).round) + 1
  puts max
  for divisor in (1 .. max)
    if ((x % divisor) == 0)
      counter += 1
    end
  end
  return (counter+1)  
end

factor_size = 0
factor_max = 50
triangle_index = 1
$divisor_history = Hash.new
while (factor_size < factor_max)
  triangle_number = get_triangle_num(triangle_index)  
  factor_size = get_divisors(triangle_number)
  #factor_size = factor(v)
  #if (factor_size > factor_max)
    puts "Triangle[#{triangle_index}] = #{triangle_number}, # of factors = #{factor_size}"
  #end  
  triangle_index += 1
end
puts "Triangle[#{triangle_index}] = #{triangle_number}, # of factors = #{factor_size}"
