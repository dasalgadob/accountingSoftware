class CreateWithholdingTaxLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :withholding_tax_locations do |t|
      t.references :city, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
