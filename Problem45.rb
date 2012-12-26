require 'set'

def pent_func(n)
  return n*(3*n-1)/2
end

def hex_func(n)
  return n*(2*n-1)
end

def tri_func(n)
  return (n*(n+1)/2)
end

i = 0
intesected = Set.new
tri = Set.new
hex = Set.new
pent = Set.new
begin
  tri << tri_func(i)
  hex << hex_func(i)
  pent << pent_func(i)
  if ((i%1000) == 0)
    intesected = tri & hex & pent
  end
  i += 1
end while (intesected.size < 4)
puts "-----"
intesected.each { |t| puts t}

