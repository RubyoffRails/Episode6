class Auto
  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end
  def initialize(opts = {})
    @color = opts[:color]
    @make = opts[:make]
    @model = opts[:model]
    @year = opts[:year]
  end

  def update(opts)
    self.color = opts.fetch(:color) { color }
    self.make = opts.fetch(:make) { make }
    self.model = opts.fetch(:model) { model }
    self.year = opts.fetch(:year) { year }
  end
end
puts Auto.wheels
