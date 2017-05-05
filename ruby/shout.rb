=begin

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "! " + words + "! " + words + "!"
  end
end

puts Shout.yell_angrily('No')
puts Shout.yelling_happily('Hurray')

=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "! " + words + "! " + words + "!"
  end
end

class Student
  include Shout

  def study
    "Studys hard at the libriary."
  end
end

class Actor
  include Shout

  def act(character)
    "Playing #{character} role."
  end
end

student = Student.new
puts "Student class mixin:"
puts student.yell_angrily("NO")
puts student.yelling_happily("Yay")
puts student.study
puts "--------------------------------------"
puts "Actor class mixin:"
actor = Actor.new
puts actor.yell_angrily("Damn")
puts actor.yelling_happily("Hurray")
puts actor.act("doctor")



