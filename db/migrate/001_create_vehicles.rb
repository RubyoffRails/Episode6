class CreateVehicles < ActiveRecord::Migration
	def change

		create_table :vehicles do |t|
			t.text :color
			t.text :make
			t.text :model
			t.integer :year
		end
	end
end