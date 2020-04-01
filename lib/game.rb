require './lib/board'

class Game
  attr_reader :message
  attr_reader :current_board
  def initialize()
    @board = Board.new
    @current_board = @board.display_board
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
    @current_board = @board.display_board
    x
  end
  # rubocop:enable Metrics/PerceivedComplexity

  def return_message
    @message
  end

  def return_current_board
    @current_board
  end

  def winner?(symbol)
    @board.check_line_of_symbols(symbol)
  end

  def draw?(symbol)
    @board.check_line_draw(symbol)
  end

  def randon_symbol; end
end
