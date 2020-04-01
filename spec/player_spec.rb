require_relative '../lib/player.rb'

RSpec.describe Player do
  let(:player) { Player.new('Pedro', 'X') }
  let(:player_with_nil) { Player.new(nil, nil) }
  let(:player_with_empty) { Player.new('', '') }
  let(:player_with_whitespaces) { Player.new(' ', ' ') }
  describe '#validate_name' do
    context 'When name is not given' do
      it 'return false if name is nil or empty' do
        expect(player_with_nil.validate_name).to be false
      end
      it 'return false if name is nil or empty' do
        expect(player_with_empty.validate_name).to be false
      end
    end
    context 'When name is given' do
      it 'return false if name have white spaces' do
        expect(player_with_whitespaces.validate_name).to be false
      end
      it 'return false if name have white spaces' do
        expect(player.validate_name).to be true
      end
    end
  end

  describe '#validate_symbol' do
    context 'When symbol is not given' do
      it 'return false if symbol is nil or empty' do
        expect(player_with_nil.validate_symbol).to be false
      end
      it 'return false if symbol is nil or empty' do
        expect(player_with_empty.validate_symbol).to be false
      end
    end
    context 'When symbol is given' do
      it 'return false if symbol have white spaces' do
        expect(player_with_whitespaces.validate_symbol).to be false
      end
      it 'return false if symbol have white spaces' do
        expect(player.validate_symbol).to be true
      end
    end
  end

  describe '#show_info_player' do
    context 'when name and symbol exists' do
      it 'return string' do
        expect(player.show_info_player).to eql('symbol: X    Name: PEDRO')
      end
    end
    context 'when name and symbol does not exists' do
      it 'return info player is empty' do
        expect(player_with_nil.show_info_player).to eql('info player is empty')
      end
    end
  end
end
