require "pry"
class Student

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all # this is the the entire array of student instances
end

def add_boating_test(name, status, instructor)
  BoatingTest.new(self, name, status, instructor)
  #when you an instance from another class, you initialize it
  #Self here because we are referring to a instance of class Student.
end


def self.find_student(name)
  #should take in the first name and output that student
  self.all.find do |student|
    student.name == name
  end
end
#come back to this
end#end of class
