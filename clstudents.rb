class Student
   
   attr_accessor :name
   attr_accessor :age
   attr_accessor :marks
   attr_accessor :percentage
   attr_accessor :n

	
    	   def initialize 
		      #@n=0
		    	@name= ""
		    	@age = 0
		    	#@marks =Array.new(n) { |i|  0}
		    	@percentage = 0.0
		    	#@enumsub = ['CAP101','CAP102','CAP103','CAP104','CAP105','CAP106']
     
		    end 

           def Input
                       print "Name :"
     	                 @name = gets.chomp
                       print "Age :"
                       @age = gets
                       print "Roll No #"
                        @roll=gets.to_i
        			        	print "Subjects #"
                        @n=gets.to_i
                         @n = @roll % 2 == 0 ? @n+1 : @n
                         @marks = Array.new(@n) { |i| 0 }
                        @n.times do |i|                        
                           print "Marks in #{i+1} :"
                           @marks[i] = gets.to_i
  	                    end
				          total =0  
				   
                  for val in @marks
				             total +=val 
				          end 
				         @percentage = (total*100)/(@n*100)
          end
          def recalculate         
           total =0  
           
                  for val in @marks
                     total +=val 
                  end 
                 @percentage = (total*100)/(@n*100)
          
          end
          def Show
            puts "name : #{@name}  Percentage : #{@percentage}"
          end

end  


#print "How many subject :"
 #n = gets.to_i
print "How many Students :"
  b = gets.to_i
Students =  Array.new(b) { Student.new  }


for stud in Students
   stud.Input
end


puts "\n\n\n\n\n\n"

allname = Array.new
for stud in Students
allname << stud.name
end

allname = allname.sort

sortedStudents =Array.new(b) {Student.new}

for loc in 0...b
  str = Students[loc].name
   sortedStudents[allname.index(str)]=Students[loc]
end

for stud in sortedStudents
  stud.Show
end


sortedStudents.collect do |obj| 
    if obj.name[obj.name.length-1].chr == 'a'  
        if obj.marks[1] != nil
        obj.marks[1] = obj.marks[1]+ 10
        obj.recalculate
      end
    end
 end   
#increment 
for stud in sortedStudents
  stud.Show
  puts stud.marks.inspect
end
