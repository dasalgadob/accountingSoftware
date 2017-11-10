class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.references :country, foreign_key: true
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
