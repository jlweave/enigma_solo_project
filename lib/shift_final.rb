require './key'
require './offset'

class ShiftFinal
  attr_reader :key,
              :offset,
              :alphabet

  def initialize(key, offset)
    @alphabet = ("a".."z").to_a << " "
    @key = key
    @offset = Offset.square(offset)
   
  end

  def a_key
    @key[0..1]
  end

  def b_key
    @key[1..2]
  end

  def c_key
    @key[2..3]
  end

  def d_key
    @key[3..4]
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

  def shift_final_key

    {"A_shift" => a_offset.to_i + a_key.to_i,
     "B_shift" => b_offset.to_i + b_key.to_i,
     "C_shift" => c_offset.to_i + c_key.to_i,
     "D_shift" => d_offset.to_i + d_key.to_i}
  end

end