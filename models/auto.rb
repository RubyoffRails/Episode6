require_relative "Vehicle"

class Auto < Vehicle

  def self.wheels
    @@wheels = 4
  end
end
