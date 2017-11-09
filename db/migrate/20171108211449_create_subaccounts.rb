class CreateSubaccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :subaccounts do |t|
      t.references :account, foreign_key: true
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
