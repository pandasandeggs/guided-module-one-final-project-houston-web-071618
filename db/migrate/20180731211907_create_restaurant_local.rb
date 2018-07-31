class CreateRestaurantLocal < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :opening_time, :time
    add_column :restaurants, :closing_time, :time
    remove_column :restaurants, :hours_of_operation, :string
  end
end
