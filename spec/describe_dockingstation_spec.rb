require 'docking_station'
describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
#  it { should respond_to(:release_bike)}

  it 'allows docking' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'checks if bike has been docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end
