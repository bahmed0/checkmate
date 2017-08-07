class AddTabCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tabs_count, :integer
  end
end
