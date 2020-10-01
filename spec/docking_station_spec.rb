require './lib/docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(bike).to be_working
  end

  it { should respond_to(:dock).with(1).argument }

  it { should respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    # subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "#release_bike" do
    it 'does not release a bike if there are none in the docking station' do
      expect { subject.release_bike }.to raise_error(RuntimeError, 'There are no bikes available')
    end

  end
  describe "#dock(bike)" do
    it 'does not accept a bike if there is already one docked' do
      bike = Bike.new
      expect {subject.dock(bike)}.to raise_error(RuntimeError, 'There is already a bike in this dock')
    end
  end
end
