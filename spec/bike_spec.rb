require './lib/docking_station'

describe Bike do
  it { should respond_to :working? }

  it 'sets a new bikes condition to working' do
    expect(subject.condition).to eq 'working'
  end
end
