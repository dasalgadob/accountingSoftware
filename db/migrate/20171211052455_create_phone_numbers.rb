class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.references :person, foreign_key: true
      t.string :number_type
      t.bigint :number

      t.timestamps
    end
  end
end
