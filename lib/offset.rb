require 'date'
class Offset
  
  def initialize(date)
    @date = DateTime.now
    @offset = []
  end

  def current_time
    @date.strftime("%d%m%y")
  end

  def square()
    square_num = (current_time.to_i)**2
    @offset = square_num.to_s[-4..-1]
  end
end