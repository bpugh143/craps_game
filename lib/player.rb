class Player
	attr_reader :dice, :name
	def initialize(input)
		@dice = input.fetch(:dice)
		@name = inpur.fetch(:name)
	end
end
