require_relative 'bike'
class DockingStation

  attr_reader :bikes, :capacity

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = Array.new
  end



  def release_bike
    fail "biking station is empty" if empty?
    @bikes.pop
    end

  def dock(bike)
    fail 'station is full' if full?
    @bikes.push(bike)
  end


  private

    def full?
      @bikes.count >= @capacity ? true : false
    end

    def empty?
      @bikes.count == 0 ? true : false
    end




end
