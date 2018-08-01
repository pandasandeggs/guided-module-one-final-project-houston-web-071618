class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time
      t.string :food_type
      t.string :affordability
      t.string :location
    end
  end
end
