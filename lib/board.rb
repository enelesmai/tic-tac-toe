class Board
	def initialize()
		@board_status = [
			[1, 2, 3],
			[4, 5, 6],
			[7, 8, 9]
		]
	end

	def display_board
		@board_status.each do |x|	
			puts x.inspect
		end
	end

	def update_board(position, symbol)

	end

	def position_taken(position)

	end

end

=begin
puts ' 1 | 2 | 3 ' 
puts '---+---+---'
puts ' 4 | 5 | 6 '
puts '---+---+---'
puts ' 7 | 8 | 9 '
puts "\n"
=end