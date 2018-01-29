class Dragon
  attr_reader :name, :color, :rider, :hungry
  attr_accessor :eat

  def initialize(name, color, rider, hungry=true, eat=0)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat = eat
  end

  def hungry?
    if @eat > 2
      @hungry = false
    else @hungry
    end
  end

  def eat
    @eat += 1
  end
end
