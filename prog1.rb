
=begin
WAP to remove the dot from a float and convert it into an integer.
Ex: x=1234.567, output should be x=1234567 where x.class is a Fixnum
=end
 x=1234.567
 str = x.to_s
 a =Array.new
 a = str.split('')
 a.delete('.')
 str = a.to_s
 x = str.to_i
 puts x