require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


marissa = Student.new("Marissa")
buffy = Student.new("Buffy")

evans = Instructor.new("Wangtron")
garry = Instructor.new("Garry")

#Boating test instance: #student, name, status, instructor
test1 = marissa.add_boating_test("Math", "Passing", evans)

Student.find_student(marissa)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line
