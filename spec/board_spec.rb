require 'rspec'
require_relative '../lib/board.rb'
require_relative '../lib/coordinate.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:symbol_x) { 'X' }
  let(:symbol_o) { 'O' }
  describe '#display_board' do
    context 'when board initialized' do
      board = Board.new
      it 'returns board string with the initial state of the board' do
        expected = "\n|  1    2    3  |\n|  4    5    6  |\n|  7    8    9  |\n"
        expect(board.display_board).to eq(expected)
      end
    end
    context 'when board is updated' do
      it 'returns board string with the current state of the board' do
        board = Board.new
        board.update_board(1, symbol_x)
        board.update_board(5, symbol_o)
        expected = "\n|  X    2    3  |\n|  4    O    6  |\n|  7    8    9  |\n"
        expect(board.display_board).to eq(expected)
      end
    end
  end
  describe '#update_board' do
    context 'updating positions on the board with given symbol' do
      it 'returns the board array with the symbols updated' do
        board = Board.new
        board.update_board(1, symbol_x)
        expect = board.update_board(5, symbol_o)
        expected = [
          [symbol_x, 2, 3],
          [4, symbol_o, 6],
          [7, 8, 9]
        ]
        expect(expect).to eq(expected)
      end
    end
  end
  describe '#get_coord' do
    context 'Create a Coordinate related to the position given' do
      it 'returns coordinate(0,1) when position is 2' do
        coordinate = Coordinate.new(0, 1)
        result = "#{board.get_coord(2).coor_x}, #{board.get_coord(2).coor_y}"
        expected = "#{coordinate.coor_x}, #{coordinate.coor_y}"
        expect(result).to eq(expected)
      end
      it 'returns coordinate(1,2) when position is 6' do
        coordinate = Coordinate.new(1, 2)
        result = "#{board.get_coord(6).coor_x}, #{board.get_coord(6).coor_y}"
        expected = "#{coordinate.coor_x}, #{coordinate.coor_y}"
        expect(result).to eq(expected)
      end
    end
  end
  describe '#position_taken' do
    context 'when position is given' do
      it 'returns true when position is already taken' do
        board.update_board(1, symbol_x)
        result = board.position_taken(1)
        expect(result).to eq(true)
      end
      it 'returns false when position is available' do
        result = board.position_taken(5)
        expect(result).to eq(false)
      end
    end
  end
  describe '#check_line_of_symbols' do
    context 'check when a line is filled with the same symbol' do
      it 'returs true if a all line is filled with the gicen symbol' do
        board.update_board(1, symbol_x)
        board.update_board(2, symbol_x)
        board.update_board(3, symbol_x)
        expect(board.check_line_of_symbols(symbol_x)).to eq(true)
      end
      it 'returs true if a all line is filled with the gicen symbol' do
        board.update_board(5, symbol_o)
        board.update_board(7, symbol_o)
        expect(board.check_line_of_symbols(symbol_o)).to eq(false)
      end
    end
  end
end
