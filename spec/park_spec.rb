require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  let(:vehicle) { double("Vehicle") }
  let(:park) { Park.new("Great Sand Dunes", 30) }

  describe "initialize" do
    it "park name" do
      expect(park.park_name).to eq("Great Sand Dunes")
    end

    it "price" do
      expect(park.price).to eq(10)
    end

    it "empty array" do
      expect(park.vehicles).to eq([])
    end

    it "adds a vehicle to the array" do
      park.add_vehicle(vehicle)
      expect(park.vehicles).to include(vehicle)
    end

  end
end