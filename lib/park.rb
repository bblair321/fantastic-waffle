class Park
  attr_reader :park_name, :price, :vehicles
  def initialize(park_name, price, vehicles = [])
    @park_name = park_name
    @price = price
    @vehicles = vehicles
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passenger_list
    @vehicles.map {|vehicle| vehicle.passengers}
  end

end