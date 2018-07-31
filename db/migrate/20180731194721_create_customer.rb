class CreateCustomer < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :preference
      t.integer :budget
      t.string :location
    end
  end
end
