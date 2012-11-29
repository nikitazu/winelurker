class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :country
      t.string :city
      t.string :region
      t.string :street
      t.string :building
      t.string :title
      t.string :image_url
      t.string :nearest_metro

      t.timestamps
    end
  end
end
