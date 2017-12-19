class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.references :person, foreign_key: true
      t.references :city, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
