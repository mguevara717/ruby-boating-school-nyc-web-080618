class Instructor

  attr_reader :name

  @@all = []

def initialize(name)
  @name = name
end

def self.all
  @@all
end

def self.pass_student(student_name, test_name)
  #iterate through BoatTest class

  BoatingTest.all.find do |exam|
    if exam.student.name == student_name && exam.name == test_name
      exam.status = "passed"
    end
end

def self.fail_student(student_name, test_name)
  BoatingTest.all.find do |exam|
    if exam.student.name != student_name && exam.name != test_name
      exam.status = "failed"
    end
end

def self.student_grade_percentage(student_name)
  exams = exams(student_name)
  num_passed = 0

  exams.each do |student_test|
    if student_test.status = "passed"
      num_passed += 1
      end
    end

  percentage = (num_passed.to_f/exams.length.to_f) * 100
  whole = percentage.to_i

  return "#{whole}%"
end
end
#Instructor.student_grade_percentage should take in a student first name and
#output the percentage of tests that they have passed
