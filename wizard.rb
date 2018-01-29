require 'pry'

class Wizard
  attr_reader :name, :rested, :cast_count
  attr_accessor :bearded

  def initialize(name, bearded: true, rested: true, cast_count: 0)
    @name = name
    @bearded = bearded
    @rested = rested
    @cast_count = cast_count
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if @cast_count >= 3
      return false
    else true
    end
  end

  def cast
    @cast_count += 1
    "MAGIC MISSILE!"
  end

end
