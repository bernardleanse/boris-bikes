require 'docking_station'

describe DockingStation do
  dock = DockingStation.new
  it { is_expected.to respond_to :release_bike }
  it "Should return a Bike object when releasing" do
    expect(dock.release_bike).to be_instance_of(Bike)
  end
  it "The returned bike should be working" do
    expect(dock.release_bike.working?).to eq true
  end
end
