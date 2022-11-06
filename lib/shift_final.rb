require './key'
require './offset'

class ShiftFinal
  attr_reader :key,
              :offset,
              :alphabet

  def initialize(key, offset)
    @alphabet = ("a".."z").to_a << " "
    @key = key
    @offset = offset
  end

  def a_key
    @key[0] + @key[1]
  end

  def b_key
    @key[1] + @key[2]
  end

  def c_key
    @key[2] + @key [3]
  end

  def d_key
    @key[3] + @key[4]
  end
  def a_offset
    @offset[0]
  end

  def b_offset
    @offset[1]
  end

  def c_offset
    @offset[2]
  end

  def d_offset
    @offset[3]
  end


end