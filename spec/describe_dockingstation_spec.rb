require 'docking_station'
describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  describe '#release_bike' do
    it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  #  bike = subject.release_bike
  #  expect(bike).to be_working
    end
  end

  it { should respond_to(:release_bike)}

  it 'allows docking' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'checks if bike has been docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
    describe '#release_bike' do
      it 'raises an error when no bikes are available' do
        expect {subject.release_bike}.to raise_error("biking station is empty")
      end
    end



end
