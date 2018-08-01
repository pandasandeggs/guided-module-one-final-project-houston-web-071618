class CreateOrder < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.belongs_to :restaurant
      end
    end
  end
