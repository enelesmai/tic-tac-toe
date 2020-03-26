require './lib/player'

class PlayerList
  @players_list = Hash.new(0)
  def initialize(player)
    @players_list[player.symbol] = player
  end

  def add_player(player)
    @players_list[player.symbol] = player
  end

  def list_players
    @players_list.each { |_k, v| p "Player =>#{v.name} Symbol =>#{v.symbol}" }
  end

  def validate_unique_name(player)
    @players_list['X'].name != player.name
  end
end
