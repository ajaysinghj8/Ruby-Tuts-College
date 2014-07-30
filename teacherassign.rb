class Person 
 attr_accessor:name
 attr_accessor:age

end
class Teacher < Person
   @@count = 100
   attr_accessor:mystudents
   attr_accessor:specialization
   attr_accessor:id
   def initilaize n=2
    mystudents = Array.new(n){Fixnum.new}
   end
   def Input
   	 print 'Name :'
   	 @name = gets.chomp
   	 print 'Age :'
   	 @age = gets.to_i
   	 print 'specialization :'
   	 @specialization = gets.chomp
     @@count+=1
      @id = @@count
   end
   def Show
   	puts "ID : #{@id} ,Name :#{@name}, Age :#{@age},No of Student# #{@mystudents.size}"
   end
end

class Student < Person
  @@count = 0
  attr_accessor:roll
  attr_accessor:percentage
  attr_accessor:myteacher
  def Input Teachers
  	 print 'Name :'
   	 @name = gets.chomp
   	 print 'Age :'
   	 @age = gets.to_i
   	 #print 'Percentage :'
   	 #@percentage= gets.to_f
     @@count+=1
     @roll = @@count
     loop do
		     print 'Select Teacher(id) from following list ::'
		     myteacher = gets.to_i
		     myt = Teachers.Select{|t| (t.id = myteacher)||(t.mystudents.size<2)}
		     myt.mystudents<<@roll
		     break if myt != nil
    end
     	
    
  end
  def Show
    puts	"Roll :#{@roll} ,Name :#{@name},Age :#{@age},Teacher :#{myteacher}"
  end
end


Teachers = Array.new(5) {Teacher.new}
#input teachers
puts 'Input Teachers data ::'
for each in Teachers
  each.Input
end
puts 'Input Students Data ::'
for each in Students
  each.Input Teachers
end
puts 'Showing Students Data ::'
for each in Students
	each.Show
end

