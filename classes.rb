=begin
	
class is only collection of methods .
used by inside intance variables
   syntax @a{a instance variable used all code code block inside all classes}
   }
start with capital letter
=end

=begin
class Abc 
    
    def sum
  	   puts "inside sum methods"
  	   @a = 20

    end
    def sub
    	puts "inside sub methods"
 	  print @a
    end
end

x= Abc.new
x.sum
puts x.sum



def abc a,b
 a+b   
end

puts abc 2,3



=end

class Myclass
	def A
		@a=20
	end
	def sum
		@a
	end
end

obj = Array.new(10) { Myclass.new}

sum=0


for val in obj
   val.A
   sum+=val.sum
end

puts sum