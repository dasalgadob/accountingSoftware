class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.references :state, foreign_key: true
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
