# This Centaur has a name and shoots arrows
class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @crankiness_meter = 0
    @sick = false
  end

  def shoot
    @crankiness_meter += 1
    if @crankiness_meter < 3 && @standing == true
      'Twang!!!'
    else
      'NO!'
    end
  end

  def run
    @crankiness_meter += 1
    if @crankiness_meter < 3 && @standing == true
      'Clop clop clop clop!!!'
    else
      'NO!'
    end
  end

  def cranky?
    if @crankiness_meter >= 3
      @cranky = true
    else
      @cranky = false
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @crankiness_meter = 0
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true && @crankiness_meter > 0
      @crankiness_meter = 0
    elsif @standing == true && @crankiness_meter == 0
      @sick = true
    elsif @laying == true
      "Can't drink that now!"
    end
  end

  def sick?
    @sick
  end
end
