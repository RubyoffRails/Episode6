class Automobile

  @number_of_wheels
  @color
  @make
  @model
  @year

  def set_number_of_wheels
  	@number_of_wheels = 4
  end

  def update(hsh)
  	@color = {hsh[:color]}
  	@make = {hsh[:make]}
  	@model = {hsh[:model]}
  	@year = {hsh[:year]}
  end

end
