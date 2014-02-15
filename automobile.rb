class Auto
  attr_accessor :color, :make, :model, :year

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

auto = Auto.new(make: "honda", year: 2014)

auto.update(make: "toyota")
puts auto.year
