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
    end
  end

  it { is_expected.to respond_to(:release_bike)}

  it 'allows docking' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'checks if bike has been docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

    describe '#release_bike' do

      # it {is_expected.to expect { raise "biking station is empty"} raise_error }
      it 'raises an error when no bikes are available' do
        expect {subject.release_bike}.to raise_error("biking station is empty")
      end
    end

     describe ' #dock()' do
         bike = Bike.new
         it 'raises an error when docking station is full' do
           DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
          expect {subject.dock(bike)}.to raise_error("station is full")
         end
     end

     describe '#release_bike' do
       it 'tests whether release bike removes object from array' do
         subject.dock(Bike.new)
         expect {subject.release_bike}.to change {subject.bikes.length}.by(-1)
       end
      end

      describe 'dock()' do
        it ' tests whether dock bike adds object to array' do
          expect {subject.dock(Bike.new)}.to change {subject.bikes.length}.by(1)
        end
      end


end
