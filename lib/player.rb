class Player
  attr_reader :name
  attr_reader :symbol
  attr_writer :name
  attr_writer :symbol
  def initialize(name = nil, symbol = nil)
    @name = name
    @symbol = symbol
  end

  def validate_name
    if name.nil? || name.empty?
      false
    else
      temp_param = name.lstrip
      if temp_param.empty?
        false
      else
        true
      end
    end
  end

  def validate_symbol
    if symbol.nil? || symbol.empty?
      false
    elsif symbol.lstrip.empty?
      false
    elsif symbol == 'X' || symbol == 'O'
      true
    else
      false
    end
  end

  def show_info_player
    if name.nil? || symbol.nil?
      'info player is empty'
    else
      "symbol: #{symbol}    Name: #{name.upcase}"
    end
  end
end
