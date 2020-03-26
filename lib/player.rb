class Player
  attr_accessor :name
  attr_accessor :symbol
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
end
