def mymethod x,y=10

  return x,y,x+y
	
end



p = mymethod 2

puts p.inspect


a,b,c = mymethod 5

puts a
puts b
puts c