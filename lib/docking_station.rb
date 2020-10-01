require_relative 'bike'

class DockingStation

  def release_bike
    raise "There are no bikes available" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end
