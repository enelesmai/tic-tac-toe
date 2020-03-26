require './lib/coordinate'
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
    coordinate = get_coordinate(position)
    @board_status[coordinate.coor_x][coordinate.coor_y] = symbol
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def get_coordinate(position)
    case position
    when 1 then Coordinate.new(0, 0)
    when 2 then Coordinate.new(0, 1)
    when 3 then Coordinate.new(0, 2)
    when 4 then Coordinate.new(1, 0)
    when 5 then Coordinate.new(1, 1)
    when 6 then Coordinate.new(1, 2)
    when 7 then Coordinate.new(2, 0)
    when 8 then Coordinate.new(2, 1)
    else Coordinate.new(2, 2)
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
  def position_taken(position)
    coordinate = get_coordinate(position)
    if @board_status[coordinate.coor_x][coordinate.coor_y].is_a? Integer
      false
    else
      true
    end
  end
end
