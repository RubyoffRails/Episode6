class Auto
  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end
  def initialize(params)
    @color = params[:color]
    @make  = params[:make]
    @model = params[:model]
    @year  = params[:year]
  end
  def update(params)
    @color = params[:color]
    @make  = params[:make]
    @model = params[:model]
    @year  = params[:year]
  end
end
puts Auto.wheels
