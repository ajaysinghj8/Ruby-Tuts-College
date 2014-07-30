=begin
	

9. Consider the following array:
X= [“abcd”, “efgh”, “ijkl” , “mnop”]
Generate the following string
D=”AbCd eFgH IjKl mNoP”

=end

X= ['abcd', 'efgh', 'ijkl', 'mnop']
D= ""
for val in X
  
  for i in 0...val.length
    if i % 2 ==0
     val[i] = val[i].chr.upcase
    end
  end

end

for val in X
D += val.to_s+" "
end
puts D