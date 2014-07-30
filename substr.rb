x= "123abcdguyfuyffyufufufuf"
j=0
arr= Array.new
for i in 0...x.length
  j+=i
  break if x[j..j+i].class == NilClass
    
    arr<<x[j..j+i]

end

puts arr.inspect	