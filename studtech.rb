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
		    print 'Percentage'
		    @Percentage = gets.to_f
		end
        def Show
         puts "Name : #{@name},Age : #{@age} ,Roll_no :#{@roll_no} ,Percentage :#{@Percentage}"
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
		   print 'Salary'
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


=begin
class Array 
  
	  def to_teacher 
       teachers = Array.new  
	   studs = self.delete_if {|s| s.Percentage < 90}
       self.replace(self.delete_if{|s| s.Percentage >= 90})
       id = 101
       sal=100000
       for stud in studs
         obtech = Teacher.new
         obtech.id =id
         obtech.Salary =sal
         obtech.name = stud.name
         obtech.age = stud.age
        teachers << obtech
       end
        return teachers
	  end
end

obteachers << obstudents.to_teacher

=end
for Stud in obstudents
  Stud.Show
end

for Tech in obteachers
    Tech.Show
end
 