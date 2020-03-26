require './lib/player'

class PlayerList
	@@players_list = Hash.new(0) 
	def initialize(player)
		@@players_list[player.symbol]= player
	end

	def add_player(player)
		@@players_list[player.symbol]= player		
	end

	def list_players		
		return @@players_list.each{|k,v| p "Player =>#{v.name} Symbol =>#{v.symbol}"  }
	end
end