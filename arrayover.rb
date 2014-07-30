class Array
  def join val=""
  	str = ""
  	self.size.times	do |i|
      str<<self[i].to_s + val+','
  	           end
   str[0..str.length-2]
  end
end

a=[1,2,3]

puts a.join("&")