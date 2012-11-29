class AddPriceToDrinkItem < ActiveRecord::Migration
  def change
    add_column :drink_items, :price, :decimal
  end
end
