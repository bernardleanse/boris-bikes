require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "Should return a Bike object when releasing" do
    dock = DockingStation.new
    dock.dock_bike(Bike.new)
    expect(dock.release_bike).to be_instance_of(Bike)
  end

  it "The returned bike should be working" do
    dock = DockingStation.new
    dock.dock_bike(Bike.new)
    expect(dock.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "should allow docking of a bike" do
    dock = DockingStation.new
    bike = Bike.new
    expect(dock.dock_bike(bike).first).to eq(bike)
  end

  it "should show docked bikes" do
    dock = DockingStation.new
    dock.dock_bike(Bike.new)
    expect(dock.docked_bikes).to be_instance_of Array
    expect(dock.docked_bikes.first).to be_instance_of Bike
  end
  
  it "should throw an error when releasing bike if dock is empty" do
    dock = DockingStation.new
    expect {dock.release_bike}.to raise_error("There are no bikes to undock")
  end

  it "should raise error if docking bike to full dock (dock size = 20)" do
    dock = DockingStation.new
    20.times { dock.dock_bike(Bike.new) }
    expect { dock.dock_bike(Bike.new) }.to raise_error RuntimeError 
  end


  
end
