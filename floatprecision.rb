class Float
   def precision t=0
      (self.to_s[0..self.to_s.index('.')+t]).to_f
     
   end
   def lower_integer
     self.to_i
   end
   def upper_integer
   	  if(self.to_i < self)
   	  	  self.to_i+1
   	  	else
   	  		self
   	  	end
   end
   def mantissa
    self-self.to_i
   end
end

a= 10.5296

puts a.precision 2
puts a.lower_integer
puts a.upper_integer
puts a.mantissa