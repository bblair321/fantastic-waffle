require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Passenger do
  let(:charlie) { Passenger.new({ "name" => "Charlie", "age" => 17 }) }
  let(:alex) { Passenger.new({ "name" => "Alex", "age" => 25 }) }

  describe "initialize" do
    it "initializes with a name and age" do
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(17)
    end
  end

  describe "adult?" do
    it "returns true if the passenger is an adult" do
      expect(alex.adult?).to be(true)
    end

    it "if the passenger is an adult" do
      expect(charlie.adult?).to be(false)
    end
  end

  describe "driver?" do
    it "returns false by default" do
      expect(charlie.driver?).to be(false)
      expect(alex.driver?).to be(false)
    end
  end

  describe "drive" do
    it "allows adults to drive" do
      alex.drive
      expect(alex.driver?).to be(true)
    end

    it "non-adults" do
      charlie.drive
      expect(charlie.driver?).to be(false)
    end
  end
end