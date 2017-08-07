class AddTabCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :tabs_count, :integer
  end
end
