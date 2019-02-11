class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :neighborhood
      t.string :size
      t.belongs_to :location_type, foreign_key: true

      t.timestamps
    end
  end
end
