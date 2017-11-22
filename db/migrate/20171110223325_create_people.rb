class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.references :document_type, foreign_key: true
      t.bigint :document_number
      t.integer :verification_digit
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.string :second_surname
      t.string :business_name
      t.string :email

      t.timestamps
    end
  end
end
