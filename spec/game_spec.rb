require 'rspec'
require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:player1) { Player.new('Pedro', 'X') }
  let(:player2) { Player.new('Carlos', 'O') }
  let(:game) { Game.new }
  let(:board) { Board.new }

  describe '#validate_position' do
    context 'when the position is not Integer' do
      it 'return false when input empty' do
        expect(game.validate_position('', player1)).to eql(false)
      end
      it 'return false when input white space' do
        expect(game.validate_position(' ', player1)).to eql(false)
      end
      it 'return false when input string' do
        expect(game.validate_position('a', player1)).to eql(false)
      end
    end
    context 'when the position is negative' do
      it 'return false for negative' do
        expect(game.validate_position(-1, player1)).to eql(false)
      end
    end
    context 'when the position is taked' do
      it 'return false for invalid position' do
        board.update_board(1, player1.symbol)
        expect(game.validate_position(1, player1)).to eql(true)
      end
    end
    context 'when the position is not taked' do
      it 'return true for valid position' do
        expect(game.validate_position(1, player1)).to eql(true)
      end
    end
  end

  describe '#winner' do
    context 'when there is a winner' do
      it 'return true' do
        game.validate_position(1, player1)
        game.validate_position(2, player2)
        game.validate_position(3, player1)
        game.validate_position(4, player2)
        game.validate_position(5, player1)
        game.validate_position(6, player2)
        game.validate_position(7, player1)
        game.validate_position(8, player2)
        game.validate_position(9, player1)
        expect(game.winner?('X')).to eql(true)
      end
    end
    context 'when there is not a winner' do
      it 'return false' do
        expect(game.winner?('O')).to eql(false)
      end
    end
  end
end
