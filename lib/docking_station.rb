class DockingStation
  attr_reader :docked_bikes
  def initialize
    @docked_bikes = Array.new
  end

  def release_bike
    raise Exception.new "There are no bikes to undock" if @docked_bikes.empty?
    return @docked_bikes.pop
  end

  def dock_bike(bike)
    raise RuntimeError if full?
    @docked_bikes << bike
  end

  private
  def full?
    return @docked_bikes.length >= 20
  end

end