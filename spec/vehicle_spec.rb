require './lib/vehicle'
require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Vehicle do 
  
  describe 'initialize' do
  it 'is a vehicle' do
    vehicle = Vehicle.new('Bob', 20)
    expect(vehicle).to be_a(Vehicle)
  end

  xit 'can it read the name' do
    passenger = Passenger.new('Bob', 20)
    expect(passenger.name).to eq('Bob')
  end

  xit 'can it get age' do
    passenger = Passenger.new('Bob', 5)
    expect(passenger.age).to eq(5)
  end

  xit 'is adult or not' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.adult?).to eq true
  end

  xit 'is driver?' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.drive).to eq true
  end

  xit 'is drive' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.drive).to eq true
  end
end

end