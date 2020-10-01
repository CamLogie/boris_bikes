require_relative 'bike'

class DockingStation

  def initialize(capacity)
    @capacity = capacity
  end

  def release_bike
    raise "There are no bikes available" unless @capacity > 0
    @bike
  end

  def dock(bike)
    raise "There is already a bike in this dock" unless @capacity < 20
    @capacity += 1
    @bike = bike
  end

  attr_reader :bike

end
