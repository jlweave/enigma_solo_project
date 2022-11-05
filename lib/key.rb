class Key
  attr_reader :key_set

  def initialize
    @key_set = []
  end

  def randomizer
    key_obj = rand(1..9999).to_s.rjust(5,'0')
  end
end