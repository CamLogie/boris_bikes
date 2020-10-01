require_relative 'bike'

class DockingStation

  def initialize(num_of_bikes)
    @bike_list = []
    num_of_bikes.times { @bike_list.push(Bike.new) }
  end

  def release_bike
    raise "There are no bikes available" unless @bike_list.length > 0
    @bike_count
  end

  def dock(bike)
    raise "There is already a bike in this dock" unless @bike_list.length < 20
    @bike_list << bike
    @bike_count = bike
  end

  attr_reader :bike

end
