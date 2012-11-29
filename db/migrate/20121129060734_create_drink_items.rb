class CreateDrinkItems < ActiveRecord::Migration
  def change
    create_table :drink_items do |t|
      t.integer :place_id
      t.integer :drink_id

      t.timestamps
    end
  end
end
