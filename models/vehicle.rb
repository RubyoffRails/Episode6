class Vehicle

  def update(values={})
    self.color = values[:color]
    self.make  = values[:make]
    self.model = values[:model]
    self.year  = values[:year]
  end

end
