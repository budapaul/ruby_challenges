#1.the first solution
class BreakfastDrink

	def initialize(milk = 200,coffe = 50,tea = 150,juice = 250)
		@milk = milk
		@coffe = coffe
		@tea = tea
		@juice = juice
	end
end

puts obj = BreakfastDrink.new.inspect

# 2 use the hash
class BreakfastDrink

	def initialize (options={})
		@milk = options[:milk] || 200
		@coffe = options[:coffe] || 50
		@tea = options[:tea] || 150
		@juice = options[:juice] || 250
	end
	
end
puts obj = BreakfastDrink.new.inspect