class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :date
      t.string :title
      t.string :description
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
