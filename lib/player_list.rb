require './lib/player'

class PlayerList
  @players_list = Hash.new { 0 }

  def self.players_list
    @things
  end

  def players_list
    self.class.players_list
  end

  def add_player(player)
    if @players_list.nil?
      @players_list = { player.name => player }
      true
    elsif validate_unique_name(player)
      false
    else
      @players_list = { player.name => player }
      true
    end
  end

  def validate_unique_name(player)
    @players_list.key?(player.name)
  end
end
