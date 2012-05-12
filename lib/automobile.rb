class Automobile
  attr_accessor :color
  attr_reader :make, :model, :year

  def self.wheels
    4
  end

  def initialize(features = {})
    defaults = {
      :color => 'black',
      :make => 'ford',
      :model => 'taurus',
      :year => '2012'
    }
    features = defaults.merge(features)

    @color = features[:color]
    @make = features[:make]
    @model = features[:model]
    @year = features[:year]
  end
end
