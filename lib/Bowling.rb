class Bowling
	def initialize
		$rolls = []
	end
	def roll pins
		$rolls << pins
	end
	def score
		result = 0
		index = 0
		10.times do
			if spare? index
				result += $rolls[index] +$rolls[index +1] +$rolls[index +2]
				index += 2
			elsif strike? index
				result += $rolls[index] +$rolls[index +1] +$rolls[index +2]
				index += 1
			else
				result += $rolls[index] +$rolls[index +1]
				index += 2
				
			end
		end
		result
	end
	def spare? index
		$rolls[index] + $rolls[index + 1] == 10
	end
	def strike? index
		$rolls[index] == 10
	end
end