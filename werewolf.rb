class Werewolf
  attr_reader :name, :location, :human, :wolf, :hungry

  def initialize(name, location = 'right behind you', human=true, wolf=false, hungry=false)
    @name = name
    @location = location
    @human = human
    @wolf = wolf
    @hungry = hungry
    @victims = []
  end

  def human?
    @human
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def wolf?
    @wolf
  end

  def hungry?
    if @victims.count > 0
      false
    else
      @hungry
    end
  end


  def consume(victim)
    if @human == true
      false
    elsif @wolf == true
      @victims << victim
      victim.status = :dead
      if @victims.empty?
        false
      else
        true
      end
    end
  end
end

class Victim
  attr_accessor :status
  def initialize
    @status = :alive
  end
end
