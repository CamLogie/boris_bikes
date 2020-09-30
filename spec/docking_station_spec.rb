require './lib/docking_station'

describe DockingStation do
  it { should respond_to :release_bike }
end

describe DockingStation.new.release_bike do
  it { should respond_to :working?}
end
