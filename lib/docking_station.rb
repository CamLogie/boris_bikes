require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike_list = []
  end

  def release_bike
    raise "There are no bikes available" if @bike_list.empty?
    @bike_count
  end

  def dock(bike)
    raise "There is already a bike in this dock" if full?
    @bike_list << bike
    @bike_count = bike
  end

  private

  def full?
    if @bike_list.length >= 20
     true
    else false
    end
  end

end
