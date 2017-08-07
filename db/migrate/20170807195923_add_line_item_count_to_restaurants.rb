class AddLineItemCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :line_items_count, :integer
  end
end
