require_relative 'bike'
class DockingStation

  def initialize
    @bikes = Array.new
  end

  attr_reader :bikes

  def release_bike
    fail "biking station is empty" unless @bikes.count != 0
    @bikes.pop
    end



  def dock(bike)
    fail 'station is full'  if @bikes.count > 19
    @bikes.push(bike)
  end
end
