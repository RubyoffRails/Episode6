require_relative('Vehicle.rb')
class Automobile < Vehicle
  attr_accessor :wheels, :carspecifications, :colour, :make, :model, :year

  def initialize(wheels, carspecifications={})
    @carspecifications = carspecifications
    @wheels = wheels
    @colour = @carspecifications[:colour]
    @make = @carspecifications[:make]
    @model = @carspecifications[:model]
    @year = @carspecifications[:year]
  end

  def update(newspecs = {})
    @newspecs = newspecs
    @colour = @newspecs[:colour]
    @make = @newspecs[:make]
    @model = @newspecs[:model]
    @year = @newspecs[:year]
  end
end