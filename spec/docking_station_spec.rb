require './lib/docking_station'

describe DockingStation do

  it 'docks something' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike, 'working')).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(docking_station.dock(bike, 'working')).to eq bike
  end

  describe "#release_bike" do
    it 'does not release a bike if there are none in the docking station' do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error(RuntimeError, 'There are no bikes available')
    end

  end
  describe "#dock(bike)" do
    it 'does not accept a bike if there is already one docked' do
      bike = Bike.new
      docking_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new, 'working') }
      expect {docking_station.dock(bike, 'working')}.to raise_error(RuntimeError, 'There is already a bike in this dock')
    end
  end

  it 'capacity should be equal to DEFAULT_CAPACITY if there is no system_maintainer_input' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'capacity should be equal to the capacity given by system maintainers' do
    docking_station = DockingStation.new(25)
    expect(docking_station.capacity).to eq 25
  end

  it 'sets bike condition attribute to broken if the bike is reported broken' do
    bike = Bike.new
    subject.dock(bike, 'broken')
    expect(bike.condition).to eq 'broken'
  end

end
