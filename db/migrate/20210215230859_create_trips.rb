class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :owner_uuid
      t.string :viewer_uuid

      t.timestamps
    end
    add_index :trips, :viewer_uuid
    add index :trips, :owner_uuid
  end
end
