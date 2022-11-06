require 'date'
class Offset
  
  def self.current_time
    DateTime.now.strftime("%d%m%y")
  end

  def self.square
    square_num = (current_time.to_i)**2
    square_num.to_s[-4..-1]
  end
end