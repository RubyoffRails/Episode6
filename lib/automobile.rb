class Automobile
  attr_accessor :color, :make, :model, :year

  def self.wheels
    4
  end

  def initialize(features)
    defaults = {
      :color => 'black',
      :make => 'ford',
      :model => 'taurus',
      :year => '2012'
    }
    features.merge!(defaults)

    @color = features[:color]
    @make = features[:make]
    @model = features[:model]
    @year = features[:year]
  end
end
