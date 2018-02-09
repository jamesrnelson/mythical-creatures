require './medusa.rb'

class Person
  attr_reader :name, :stoned

  def initialize(name, stoned: false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    if medusa.statues.include?(@name)
      return true
    else return false
    end
  end
end
