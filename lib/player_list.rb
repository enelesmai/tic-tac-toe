require './lib/player'

class PlayerList
	@@players_list = Hash.new(0)
	
  def initialize(player)
    @@players_list[player.name] = player
  end

	def add_player(player)		
		if validate_unique_name(player)
			false
		else 
			@@players_list[player.name] = player
			true
		end
  end

  def list_players
    @@players_list.each { |_k, v| p "key =>#{_k} Player =>#{v.name} Symbol =>#{v.symbol}" }
  end

	def validate_unique_name(player)		
    return @@players_list.has_key?(player.name) 
  end
end
