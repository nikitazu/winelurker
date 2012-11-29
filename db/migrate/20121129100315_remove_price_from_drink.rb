class RemovePriceFromDrink < ActiveRecord::Migration
  def up
    remove_column :drinks, :price
  end
end
