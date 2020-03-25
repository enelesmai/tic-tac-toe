class Board
	def initialize()
		
	end

	def display_board
		puts ' 1 | 2 | 3 ' 
		puts '---+---+---'
		puts ' 4 | 5 | 6 '
		puts '---+---+---'
		puts ' 7 | 8 | 9 '
		puts "\n"
	end
=begin	
	[
		[1,2,3],
		[4,5,6],
		[7,8,9]
	]
	[1,2,3,4,5,6,7,8,9]

	[3,3]

	|0,0  0,1  0,2|	
	|1,0  1,1  1,2|
	|2,0  2,1  2,2|
	
	{1:true , 2:false, 3: true... 9: false}
=end
end

anarray = [
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]
]

n=0
m=0
anarray.each do |x|	
	puts x.inspect
	x.each do |y|
		puts n.to_s+" "+m.to_s
		n+=1
	end
	m+=1
end