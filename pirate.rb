class Pirate
  attr_reader :name, :job, :heinous_acts, :booty

  def initialize(name, job="Scallywag", heinous_acts=0, booty=0)
    @name = name
    @job = job
    @heinous_acts = heinous_acts
    @booty = booty
  end

  def cursed?
    if @heinous_acts > 2
      return true
    else return false
    end
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def rob_ship
    @booty += 100
    "Takes gold"
  end

end
