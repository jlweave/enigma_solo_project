require 'date'
class Offset
  
  def self.current_time
    DateTime.now.strftime("%d%m%y")
  end

  def self.square(conditional = current_time.to_i)
    square_num = (conditional).to_i**2
    square_num.to_s[-4..-1]
  end
end