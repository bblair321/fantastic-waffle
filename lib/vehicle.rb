class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize(year,make,model,passengers=[])
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = passengers
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.select {|passenger| passenger.adult?}
  end
end