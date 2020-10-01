require_relative 'bike'

class DockingStation

  def initialize
    @capacity = 0
  end

  def release_bike
    raise "There are no bikes available" unless @bike
    @bike
  end

  def dock(bike)
    raise "There is already a bike in this dock" unless @capacity == 0
    @capacity += 1
    @bike = bike
  end

  attr_reader :bike

end
