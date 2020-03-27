require './lib/board'

class Game
  attr_reader :message
  def initialize; end

  def start
    @board = Board.new
    @board.display_board
  end

  # rubocop:disable Metrics/PerceivedComplexity
  def validate_position(position, player)
    x = false
    if position.is_a? Integer
      if position.positive? && position < 10
        if @board.position_taken(position) == false
          x = true
          @board.update_board(position, player.symbol)
          @message = '¡Board updated!'
        else
          @message = 'The position is taken, choose another position'
        end
      else
        @message = 'Wrong position, choose a position between 1 to 9'
      end
    else
      @message = 'Wrong position, choose a position between 1 to 9'
    end
    @board.display_board
    x
  end
  # rubocop:enable Metrics/PerceivedComplexity

  def return_message
    @message
  end

  def winner?(symbol)
    @board.check_line_of_symbols(symbol)
  end

  def draw?(_symbol)
    @board.check_line_draw
  end

  def randon_symbol; end
end
