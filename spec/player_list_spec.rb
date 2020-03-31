require 'rspec'
require_relative '../lib/player_list.rb'

RSpec.describe PlayerList do
  let(:playerlist) { PlayerList.new }
  let(:player1) { Player.new('Pedro', 'X') }
  let(:player2) { Player.new('Carlos', 'O') }
  let(:player2_repeated) { Player.new('Pedro', 'X') }
  describe '#add_player' do
    context 'add a new player' do
      it 'returns true when a new player is added to the playerlist' do
        expected = playerlist.add_player(player1)
        expect(expected).to eql(true)
      end
      it 'returns true when a new player is added to the playerlist' do
        playerlist.add_player(player1)
        expected = playerlist.add_player(player2)
        expect(expected).to eql(true)
      end
      it 'returns false when a repeated is added to the playerlist' do
        playerlist.add_player(player1)
        expected = playerlist.add_player(player2_repeated)
        expect(expected).to eql(false)
      end
    end
  end
  describe '#validate_unique_name' do
    context 'when name added a new player' do
      it 'returns false when name does not exist' do
        playerlist.add_player(player1)
        expect(playerlist.validate_unique_name(player2)).to eql(false)
      end
      it 'returns true when name already exists' do
        playerlist.add_player(player1)
        expect(playerlist.validate_unique_name(player2_repeated)).to eql(true)
      end
    end
  end
end
