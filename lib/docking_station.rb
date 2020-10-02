require_relative 'bike'

class DockingStation

  attr_reader :bike, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_list = []
  end

  def release_bike
    raise "There are no bikes available" if @bike_list.empty?
    @bike_count
  end

  def dock(bike, user_input)
    raise "There is already a bike in this dock" if full?
    @bike = bike
    report_condition(user_input)
    @bike_list << bike
    @bike_count = bike
  end

  private

  def full?
    if @bike_list.length >= DEFAULT_CAPACITY
     true
    else false
    end
  end

  def report_condition(user_input = 'working')
    @user_input = user_input
    @bike.set_condition('broken') if @user_input == 'broken'
  end

end
