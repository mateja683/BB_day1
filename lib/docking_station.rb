require_relative 'bike'
class DockingStation

  def initialize
    @bikes = Array.new
  end

  attr_reader :bikes

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
      @bikes.count > 19 ? true : false
    end

    def empty?
      @bikes.count == 0 ? true : false
    end




end
