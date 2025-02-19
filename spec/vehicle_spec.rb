require './lib/vehicle'
require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Vehicle do
  let(:vehicle) { Vehicle.new(2020, "Toyota", "Camry", []) }
  let(:charlie) { Passenger.new({ "name" => "Charlie", "age" => 17 }) }
  let(:jude) { Passenger.new({ "name" => "Jude", "age" => 25 }) }

  describe "initialize" do
    it "initializes" do
      expect(vehicle.year).to eq(2020)
      expect(vehicle.make).to eq("Toyota")
      expect(vehicle.model).to eq("Camry")
      expect(vehicle.passengers).to eq([])  # Ensure it's an empty array
    end
  end

  describe "add_passenger" do
    it "adds a passenger" do
      vehicle.add_passenger(charlie)
      expect(vehicle.passengers).to include(charlie)
    end

    it "adds multiple passengers" do
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      expect(vehicle.passengers).to include(charlie, jude)
    end
  end

  describe "num_adults" do
    it "returns an empty array when no adults are added" do
      vehicle.add_passenger(charlie)  # Charlie is not an adult
      expect(vehicle.num_adults).to eq([])
    end

    it "array with adults" do
      vehicle.add_passenger(charlie)  # Charlie is not an adult
      vehicle.add_passenger(jude)    # Alex is an adult
      expect(vehicle.num_adults).to eq([jude])
    end

    it "array with multiple adults" do
      vehicle.add_passenger(jude)
      vehicle.add_passenger(Passenger.new({ "name" => "Bob", "age" => 30 }))  # Another adult
      expect(vehicle.num_adults.length).to eq(2)
    end
  end
end