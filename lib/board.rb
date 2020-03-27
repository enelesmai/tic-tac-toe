require './lib/coordinate'
class Board
  def initialize()
    @array = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    @valid_lines = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9],
      [1, 5, 9],
      [7, 5, 3]
    ]
  end

  def display_board
    puts ''
    @array.each do |x|
      print '|'
      x.each do |y|
        print "  #{y}  "
      end
      print '|'
      puts ''
    end
  end

  def update_board(position, symbol)
    coordinate = get_coord(position)
    @array[coordinate.coor_x][coordinate.coor_y] = symbol
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def get_coord(position)
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
    coordinate = get_coord(position)
    if @array[coordinate.coor_x][coordinate.coor_y].is_a? Integer
      false
    else
      true
    end
  end

  def check_line_of_symbols(symbol)
    valid = false
    @valid_lines.each do |line|
      array_values = []
      line.each do |position|
        coordinate = get_coord(position)
        array_values.push(@array[coordinate.coor_x][coordinate.coor_y])
      end
      if array_values.all?(symbol)
        valid = true
        break
      end
    end
    valid
  end

  def check_line_draw
    !check_line_of_symbols(@array[0][0])
  end
end
