require_relative 'bike'

class DockingStation 
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike #assuming dock is empty
    fail 'Sorry mate, don\'t be a dock' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Dock off im stuffed' if full?
    @bikes << bike 
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= @capacity
  end

end