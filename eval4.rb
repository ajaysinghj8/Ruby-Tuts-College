

class String

   def split_by_type
      ints = Array.new
      chars = Array.new
      
      temp = self.split('').collect { |i| i[0]}
      temp = temp.sort
      
      temp.length.times do |i|
      	if temp[i] > 47 && temp[i] < 58
      	    ints << temp[i].chr
        else
        	chars << temp[i].chr
        end
      end

      return chars,ints 
   end
end


p = "fdeabc12965"
x=p.split_by_type
puts x.inspect


