class Hobbit
  attr_reader :name, :disposition, :age

  def initialize(name, disposition="homebody", age=0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age > 32
      return true
    else return false
    end
  end

  def old?
    if @age >= 101
      return true
    else return false
    end
  end

  def has_ring?
    if @name == "Frodo"
      return true
    else return false
    end
  end

  def is_short?
    true
  end 

end
