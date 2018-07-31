class CreateOrder < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :restaurant
    end
  end
end
