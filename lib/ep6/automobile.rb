class Automobile < Vehicle
  attr_accessor :color
  attr_reader :make, :model, :year

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

    # Now add the new instance to the @all_vehicles array via Vehicle's
    # initialize method.
    super()
  end

  def ==(other)
    if @color == other.color && @make == other.make &&
      @model == other.model && @year == other.year
      return true
    else
      return false
    end
  end
end
