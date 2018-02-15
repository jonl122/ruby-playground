class song

  def initialization(name, duration)
    @name = name
    @duration = duration
  end

  def name
    @name
  end

end

s = song.new("Honesty", 342)
s1 = song.new("wildside", 451)
s2 = song.new("Youth Gone Wild", 132)

puts s.names
