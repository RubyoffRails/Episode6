class Vehicle

  @@vehicles = []

  def self.wheels
    @wheels = 4
  end

  def self.give_me_blue_hondas
    only_autos = @@vehicles.select { |v| v.class == Automobile }
    only_autos.map do |car|
     if car.attributes.include?('blue') && car.attributes.include?('honda')
       car
     end
    end
  end

end
