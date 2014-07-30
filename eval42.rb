

class String

   def split_by_type
          ints = Array.new
          chars = Array.new
          temp = Array.new
          temp = self.split('').collect{ |i| i[0].chr}      
        
        temp.length.times do |i|
      	if temp[i].class  == Fixnum
      	    ints << temp[i].chr
        else
        	chars << temp[i].chr
        end
      end

        return chars,ints
     
   end
end


p = "abcdef12965"
x=p.split_by_type
puts x.inspect
