class Vehicle

  @@vehicles = []

  def self.wheels
    4 # Hardcoded value since there were no further intructions regarding what an automobile is. 
  end

  def self.blue_honda_accords
    automobiles = @@vehicles.select { |vehicle| vehicle.class == Automobile }
    automobiles.keep_if do |automobile| 
      automobile.color == 'blue' && 
      automobile.make  == 'Honda' && 
      automobile.model == 'Accord'
    end
  end

end
