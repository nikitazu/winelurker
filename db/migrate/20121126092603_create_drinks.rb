class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :title
      t.text :description
      t.decimal :alcohol, :precision => 3, :scale => 0
      t.decimal :price, :precision => 8, :scale => 2
      t.string :image_url

      t.timestamps
    end
  end
end
