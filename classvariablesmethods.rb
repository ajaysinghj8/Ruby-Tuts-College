
class Student
   
   attr_accessor :name
   attr_accessor :age
   attr_accessor :marks
   attr_accessor :percentage
   attr_accessor :n

	
    	   def initialize n=3
		    	@n =n
		    	@name= ""
		    	@age = 0
		    	@marks =Array.new(n) { |i|  0}
		    	@percentage = 0.0
		    	
		    	#@enumsub = ['CAP101','CAP102','CAP103','CAP104','CAP105','CAP106']
     
		    end 
   
            def self.ISectionInfo  sec,inc
                @@Section = sec
                @@Incharge = inc
            end

            
           def Input
                       print "Name :"
     	                 @name = gets.chomp
                       print "Age :"
                       @age = gets
        			        	n.times do |i|                        
                           print "Marks in #{i+1} :"
                           @marks[i] = gets.to_i
  	                    end
				          total =0  
				          for val in @marks
				             total +=val 
				          end 
				         @percentage = (total*100)/(@n*100)
          end         
          
          def Show
            puts "name : #{@name}  Percentage : #{@percentage} Section : #{@@Section} Incharge :#{@@Incharge}"
          end

end  

class SortStudent
  
  def self.Sort stuObject
  	allname = Array.new
     for stud in stuObject
      allname << stud.name
     end
    allname = allname.sort

  sortedStudents =Array.new(b) {Student.new(n)}
   for loc in 0...b
     str = stuObject[loc].name
     sortedStudents[allname.index(str)]=stuObject[loc]
   end
   sortedStudents
end

print "Section :"
 sec = gets.chomp
 print "Incharge :"
   inc = gets.chomp
  Student.ISectionInfo sec,inc
   
print "How many subject :"
 n = gets.to_i
print "How many Students :"
  b = gets.to_i
Students =  Array.new(b) { Student.new(n)  }


for stud in Students
   stud.Input
end


puts "\n\n\n\n\n\n"

 

allname = Array.new
for stud in Students
allname << stud.name
end

allname = allname.sort

sortedStudents =Array.new(b) {Student.new(n)}



for loc in 0...b
  str = Students[loc].name
   sortedStudents[allname.index(str)]=Students[loc]
end


for stud in sortedStudents
  stud.Show
end

obj =SortStudent.sort Students

for stud in obj`
  stud.Show
end