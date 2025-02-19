require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Passenger do 
  
  describe 'initialize' do
  it 'is a Passsenger' do
    passenger = Passenger.new('Bob', 20)
    expect(passenger).to be_a(Passenger)
  end

  it 'can it read the name' do
    passenger = Passenger.new('Bob', 20)
    expect(passenger.name).to eq('Bob')
  end

  it 'can it get age' do
    passenger = Passenger.new('Bob', 5)
    expect(passenger.age).to eq(5)
  end

  it 'is adult or not' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.adult?).to eq true
  end

  it 'is driver?' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.drive).to eq true
  end

  it 'is drive' do
    passenger = Passenger.new('Bob', 18)
    expect(passenger.drive).to eq true
  end
end

end
