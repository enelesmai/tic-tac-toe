require './lib/board'

class Game
  def initialize; end

  def start
    @board = Board.new
    # @board.display_board
  end

  # rubocop:disable Metrics/PerceivedComplexity
  # rubocop:disable Metrics/BlockNesting
  def ask_for_position(player)
    x = false
    until x == true
      @board.display_board
      print "Player '#{player.name}' please choose a position (from 1 to 9): "
      position = gets.chomp.to_i

      if position.is_a? Integer
        if position.positive? && position < 10
          if @board.position_taken(position) == false
            x = true
            @board.update_board(position, player.symbol)
          else
            puts 'The position is taked, choose another position'
          end
        else
          puts 'Wrong position, choose a position between 1 to 9'
        end
      else
        puts 'Wrong position, choose a position between 1 to 9'
      end
    end
  end

  # rubocop:enable Metrics/PerceivedComplexity
  # rubocop:enable Metrics/BlockNesting

  def winner?
    prng = Random.new
    prng.rand(10).even?
  end

  def draw?
    prng = Random.new
    prng.rand(10).even?
  end
end
