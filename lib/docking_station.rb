require_relative 'bike'
class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  def initialize
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
      @bikes.count >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
      @bikes.count == 0 ? true : false
    end




end
