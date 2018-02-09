require './medusa_person.rb'

class Medusa
  attr_accessor :name, :statues

  def initialize(name, statues=[])
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues << victim
    if statues.count > 3
      statues[0].stoned = false
      statues.shift
    end
  end

end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name, stoned=false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    @stoned
  end

end
