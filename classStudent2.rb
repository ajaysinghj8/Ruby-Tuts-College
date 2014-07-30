class Student
   
   attr_accessor :name
   attr_accessor :roll_no
   @howManySubjects 
   @marks #Array of marks 
   @enumsub
   @total # total marks
   attr_accessor :percentage 
   
    
      def initialize n = 3
        @howManySubjects = n
        @marks =Array.new(n) { |i|  0} 
        @enumsub = ['CAP101','CAP102','CAP103','CAP104','CAP105','CAP106']
      end
        
      def Show
        puts "Name : #{@name.chomp}- #{@roll_no} Percentage : #{@percentage} Marks :#{@total} "
      end

     def Input
     	puts "Name :"
     	@name = gets
      puts "Roll No :"
      @roll_no = gets
        puts "How many Subjects :"
  	    @howManySubjects = gets.to_i
  	    @howManySubjects.times do |i|                        
                            puts "Marks in #{enumsub[i]} :"
                            @marks[i] = gets.to_i
  	                    end
        @total =0  
        for val in @marks
         @total +=val 
        end 
        @percentage = (@total*100)/(@howManySubjects*100)
     end
 end

puts "How many students:"
n = gets.to_i
secD1117 = Array.new(n) { Student.new }

for eachstudent in secD1117
  eachstudent.Input
end


#for topper
topper = Student.new
topper = secD1117[0]

for eachstudent in secD1117
  if   topper.percentage < eachstudent.percentage
        topper = eachstudent
  end
end

puts "\n\nTopper of section D1117 is :.................................\n"
topper.Show
puts "\n\n.............................................................."
#student start with name "A%"

puts "Name Start with A% ................................................"
for eachstudent in secD1117
  str = eachstudent.name
  if str[0].chr == 'A'
   puts str
  end
end
puts "\n\................................................................."

puts "\n \nSrudent % below 50 % :....................\n"

for eachstudent in secD1117
  if eachstudent.percentage < 50
     eachstudent.Show
   end
end

puts "................................................................."


puts "Name end with A% ................................................"
for eachstudent in secD1117
  str = eachstudent.name
  if str[str.length-2].chr == 'a'
   puts str
  end
end
puts "\n\n....................................................................."




puts "Sorting with marks ::"
small = Student.new
loc =0
for i in 0...secD1117.length
   small = secD1117[loc]
    for j in i...secD1117.length
       if small.roll_no > secD1117[j].roll_no
             loc =j
             small = secD1117[j]
       end
    end
    secD1117[loc] = secD1117[i]
    secD1117[i] = small
  
end

for eachstudent in secD1117
    eachstudent.Show
end