class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.references :grupo, foreign_key: true
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
