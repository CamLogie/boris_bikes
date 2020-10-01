require './lib/docking_station'

describe DockingStation do


  it 'releases working bikes' do
    bike = Bike.new
    docking_station = DockingStation.new(1)
    docking_station.dock(bike)
    expect(bike).to be_working
  end

  it 'docks something' do
    docking_station = DockingStation.new(1)
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new(0)
    docking_station.dock(bike)
    expect(docking_station.bike).to eq bike
  end

  describe "#release_bike" do
    it 'does not release a bike if there are none in the docking station' do
      docking_station = DockingStation.new(0)
      expect { docking_station.release_bike }.to raise_error(RuntimeError, 'There are no bikes available')
    end

  end
  describe "#dock(bike)" do
    it 'does not accept a bike if there is already one docked' do
      bike = Bike.new
      docking_station = DockingStation.new(20)
      expect {docking_station.dock(bike)}.to raise_error(RuntimeError, 'There is already a bike in this dock')
    end
  end
end
