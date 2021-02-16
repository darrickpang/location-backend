class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.string :owner_uuid, null: false
      t.string :viewer_uuid, null: false

      t.timestamps
    end
    add_index :trips, :viewer_uuid
    add index :trips, :owner_uuid
  end
end
