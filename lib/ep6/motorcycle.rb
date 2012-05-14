class Motorcycle < Vehicle
  def self.wheels
    2
  end

  def initialize
    # Add the new instance to the @all_vehicles array via Vehicle's
    # initialize method.
    super()
  end
end
