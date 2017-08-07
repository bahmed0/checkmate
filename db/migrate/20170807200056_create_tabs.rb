class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
