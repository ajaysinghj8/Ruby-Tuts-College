class Person
 attr_accessor:name
 attr_accessor:age 
end

class Student < Person

		attr_accessor:roll_no
		attr_accessor:Percentage

		  def Input
		    print 'Name :'
		    @name = gets.chomp
		    print 'Age :'
		    @age = gets.chomp
		    print 'Roll_no #'
		    @roll_no = gets.chomp.to_i
		    print 'Percentage :'
		    @Percentage = gets.to_f
		end
        def Show
         puts "Name : #{@name},Age : #{@age} ,Roll_no :#{@roll_no} ,Percentage :#{@Percentage}"
        end
     
        def to_teacher 
           obtech = Teacher.new
           print 'New Id : '
           obtech.id =gets.to_i
           print 'Salary :'
           obtech.Salary =gets.to_f
           obtech.name = self.name
           obtech.age = self.age
           return obtech
        end
end

class Teacher < Person

		attr_accessor:id
		attr_accessor:Salary

		def Input
		   print 'Name :'
		   @name = gets.chomp
		   print 'Age :'
		   @age = gets.chomp
		   print 'Id #'
		   @id = gets.chomp.to_i
		   print 'Salary :' 
		   @Salary = gets

		end

        def Show
         puts "Name : #{@name},Age : #{@age} ,id :#{@id} ,Salary :#{@Salary}"
        end
end


obstudents = Array.new(2) { Student.new  }
obteachers = Array.new(1) { Teacher.new }

puts 'Students'
for Stud in obstudents
  Stud.Input
end

puts 'Teachers'
for Tech in obteachers
    Tech.Input
end

obstud = obstudents.select{|s| s.Percentage > 90}
obstudents.delete_if{|s| s.Percentage > 90}
puts 'Promoting students to teachers :::'
 for stud in obstud
    obteachers<< stud.to_teacher
 end

puts 'All Students :::'
for stud in obstudents
  stud.Show
  end
  puts 'All Teachers :: ' 
  for Tech in obteachers
    Tech.Show
  end 