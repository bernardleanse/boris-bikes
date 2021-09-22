class DockingStation
  attr_reader :docked_bikes
  def initialize
    @docked_bikes = Array.new
  end

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @docked_bikes << bike
  end
end