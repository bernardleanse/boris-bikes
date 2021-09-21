require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  it "Respond to release_bike" do
    docking_station.release_bike
  end
end