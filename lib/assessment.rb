# Write your answer bellow
#
# Happy coding!!

class Person
	attr_accessor :first_name, :last_name, :full_name

end

class Player < Person
	def initialize(health=20, strength=5, alive=true)
		
	end
	attr_accessor :health, :strength, :alive

	def take_damage(attack_strength)
		@attack_strength = attack_strength
		@health = @health - @attack_strength

		if @health <= 0
			puts "#{first_name} is dead!"
		end
	end

	def attack(player)
		@attack_strength = self.strength 
		puts player.take_damage(@attack_strength)
	end

end

class Knight < Player
	def initialize 
		@health = 50
		@strength = 7
	end
end

class Wizard < Player
	def initialize 
		@health = 20
		@strength = 75
	end
end


michael = Wizard.new
michael.first_name = "Michael"
michael.last_name = "Chow-"

puts michael.health
puts michael.strength
puts michael.first_name

xiao = Knight.new
xiao.first_name = "Xiao"
puts xiao.health


dom = Wizard.new
puts dom.health
puts dom.strength

harry = Wizard.new
puts harry.health

michael.attack(xiao)
puts xiao.health