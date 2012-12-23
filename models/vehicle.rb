class Vehicle

  def self.blue_honda_accords
    automobiles = @@vehicles.select { |vehicle| vehicle.class == Automobile }
    automobiles.keep_if do |automobile| 
      automobile.color == 'blue' && 
      automobile.make  == 'Honda' && 
      automobile.model == 'Accord'
    end
  end

  def self.wheels
    4
  end
end
