class CreateAuxiliars < ActiveRecord::Migration[5.0]
  def change
    create_table :auxiliars do |t|
      t.references :subaccount, foreign_key: true
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
