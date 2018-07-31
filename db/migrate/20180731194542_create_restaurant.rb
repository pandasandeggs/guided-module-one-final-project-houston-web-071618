class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :hours_of_operation
      t.string :type
      t.string :affordability
      t.string :location
    end
  end
end
