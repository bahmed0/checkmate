class AddLineItemCountToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_items, :line_items_count, :integer
  end
end
