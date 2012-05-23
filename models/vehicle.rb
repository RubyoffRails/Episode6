class Vehicle
  @@vehicles = []

  def self.add(hash)
    @@vehicles << hash
  end
    
  def self.vehicles
    @@vehicles
  end

  def self.wheels
    37
  end

  def self.find_blue_hondas
    @@vehicles.select do |vehicle|
      vehicle[:color] == "blue" && vehicle[:make] == "Honda" && vehicle[:model] == "Accord"
    end
  end
end
