class Robot
	attr_accessor :serial_number
	
	def initialize(sin, mod, slogan)
		@serial_number = sin
		@module = mod
		@slogan = slogan
	end
end

robot1 = Robot.new(2716555,21, 'Bending Robot 2716555')
puts robot1.inspect
robot2 = Robot.new(2716057,22, 'Bending Robot 2716057')
puts robot2.inspect
robot3 = Robot.new(2716969,20, 'Bending Robot 2716969')
puts robot3.inspect
robot4 = Robot.new(2716123,21, 'Bending Robot 2716123')
puts robot4.inspect

class Pig
	attr_accessor :weight

	def initialize(options)
		@weight = options[:weight]
	end
	
	def <(object)
		@weight < object.weight
	end

	def >(object)
		@weight > object.weight
	end
end

pig = Pig.new(weight: 200)
hog = Pig.new(weight: 250)
puts pig.>(hog)
puts hog.>(pig)
puts pig.<(hog)
puts hog.<(pig)