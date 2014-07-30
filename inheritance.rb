class A
  
   def initialize  
    @a ="A"
   end 

end


class B < A
  def initialize 
    super
  	@b ="B"
  end
end

class C < B
  def initialize
    super
    @a ="C"
  end
  def show
  puts @a
  puts @b
  
  end
end

obj = C.new 
obj.show 