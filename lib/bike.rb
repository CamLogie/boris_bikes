class Bike

  attr_reader :condition

  DEFAULT_CONDITION = "working"

  def initialize(condition = DEFAULT_CONDITION)
    @condition = condition
  end

  def working?
     @condition == "working" ? true : false
  end

  def set_condition(report = 'working')
    @condition = report
  end
end
