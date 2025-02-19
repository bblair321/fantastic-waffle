class Passenger
  attr_reader :name, :age

  def initialize(info)
    @name = info["name"]
    @age = info["age"]
    @drive = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @drive
  end

  def drive
    @drive = true if adult?
  end
end