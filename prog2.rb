=begin
WAP to get the following output:
Ex: s=”abcd” output is “ababcdcd”
If s=”abcdef” output is “abcabcdefdef”
NOTE: Break the string into two parts then repeat both the parts	
=end

arr = Array.new
s  = "abcd"
arr[0] = s[0,s.length/2]
arr[1] = s[s.length/2,s.length]
2.times do |i|
	2.times do
	print arr[i]
    end
end


