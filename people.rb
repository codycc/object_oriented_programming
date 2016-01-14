class Person
  attr_accessor :name

    def initialize(name)
      @name = name
    end

    def greet
      puts "Hi, my name is #{name}"
    end

end

class Student <Person
  def learn
    puts "i get it!"
  end
end

class Instructor <Person
  def teach
    puts "Everything in Ruby is an object"
  end
end

chris = Instructor.new("Chris")
christina = Student.new("Christina")

chris.greet
christina.greet

chris.teach
christina.learn

#The reason the below code doesn't work is because each persons methods were defined locally within their class, meaning that class can only do whats defined inside of it, unless it inherits like greeting did from the Person class.
#Although
christina.teach
chris.learn
