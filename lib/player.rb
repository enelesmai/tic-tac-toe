class  Player
	attr_accessor :name
	attr_accessor :symbol
	@@playersList = Hash.new(0)
	def initialize(name=nil, symbol=nil)
		@name=name
		@symbol=symbol
	end
	def name
		@name
	end
	def name=(name)		
			@name=name
	end
	def symbol
		@symbol
	end
	def symbol=(symbol)		
			@symbol=symbol
	end
	def validate_name		
		if name.nil?  || name.empty? 
			false
		else 
			temp_param= name.lstrip
			if temp_param.empty?
				false
			else 
				true
			end		
		end
	end
end
