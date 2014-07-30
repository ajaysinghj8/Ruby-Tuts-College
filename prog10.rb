
=begin
	

10. Consider two arrays 
A= [1, 3, 4, “aa”, “uu”, 56]
B= [“jj”, 6, 3, “ee”, 78]
Form the following array
X=[“aauujjee” , 151]
Note : All the strings from both the arrays are 
concatenated and inserted at index 0 of X and all the 
integers from both the arrays are added and inserted into index 1 of X.
=end


A= [1, 3, 4, 'aa', 'uu', 56]
B= ['jj', 6, 3, 'ee', 78]


X= Array.new
X[0]=""
X[1]=0

for val in A+B 
  if val.class == String
    X[0] += val
  else
 	X[1] = X[1]+val
end

end

puts X.inspect