require './lib/board'

class Game
  @@message
  def initialize; end

  def start
    @board = Board.new
    @board.display_board
  end

  # rubocop:disable Metrics/PerceivedComplexity
  # rubocop:disable Metrics/BlockNesting
  def validate_position(position, player)
      x = false
      if position.is_a? Integer
        if position.positive? && position < 10
          if @board.position_taken(position) == false
            x = true
			      @board.update_board(position, player.symbol)
			      @board.display_board
          else
            @@message = 'The position is taken, choose another position'
          end
        else
          @@message = 'Wrong position, choose a position between 1 to 9'
        end
      else
        @@message = 'Wrong position, choose a position between 1 to 9'
      end
      x
  end
  # rubocop:enable Metrics/PerceivedComplexity
  # rubocop:enable Metrics/BlockNesting

  def self.get_message
    return @@message
  end

  def winner?(symbol)
    return @board.check_line_of_symbols(symbol)
  end

  def draw?(symbol)
    return @board.check_line_draw
  end

end
