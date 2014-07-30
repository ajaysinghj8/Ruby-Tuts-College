=begin
x ="ajay"
arr =Array.new
arr = x.split('')

arr = arr.collect{|i| i.to_i}
puts arr.inspect

=end
arr=[2,324,3,4,23,42,35,3,5,34,5,3,534534,6,346,34,6]

sarr = Array.new
n = arr.length
for i in 0...n
sarr[i] = arr[i...arr.length].inject do |memo,i|
                    if memo>i
                    	i
                    else
                    	memo
                    end
                   

                   end
arr.delete(sarr[i])
n-=1   
end

arr = arr.collect{|i| i.chr.to_s}
puts arr.inspect