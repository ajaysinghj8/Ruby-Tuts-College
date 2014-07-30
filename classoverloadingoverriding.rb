class Abc
  def sum x,y
       x+y
  end
end

class Bcd extend Abc
 def sum x,y
  x+y+1
 end
end  


a = Bcd.new

puts a.sum 5,6

