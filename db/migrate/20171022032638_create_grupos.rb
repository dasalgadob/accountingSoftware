class CreateGrupos < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos do |t|
      t.integer :number
      t.string :name
      t.references :clase, foreign_key: true

      t.timestamps
    end
  end
end
