class Automobile
  attr_accessor :color, :make, :model, :year

  def self.num_wheels
    4
  end

  def update(values={})
    self.color = values[:color]
    self.make  = values[:make]
    self.model = values[:model]
    self.year  = values[:year]
  end

end
