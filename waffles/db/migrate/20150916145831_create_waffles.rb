class CreateWaffles < ActiveRecord::Migration
  def change
    create_table :waffles do |t|
      t.string :name,  null: false
      t.string :photo,  null: false
      t.boolean :active, default: true
      t.string :toppings, null: false

      t.timestamps null: false
    end
  end
end
