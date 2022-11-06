class Key

  def self.randomizer
    rand(1..9999).to_s.rjust(5,'0')
  end
end