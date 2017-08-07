class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :restaurant_id
      t.integer :menuitem_id

      t.timestamps

    end
  end
end
