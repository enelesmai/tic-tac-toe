class  Player
	attr_accessor :name
	def initialize(name)
		@name=name
	end
	def get_name
		return @name
	end
end