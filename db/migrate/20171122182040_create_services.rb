class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.references :auxiliar, foreign_key: true
      t.references :cost_centre, foreign_key: true
      t.integer :taxable_income
      t.references :account_IVA
      t.references :account_withholding_tax
      t.references :account_withholding_tax_ICA
      t.timestamps
    end
    add_foreign_key :services, :auxiliars, column: :account_IVA_id
    add_foreign_key :services, :auxiliars, column: :account_withholding_tax_id
    add_foreign_key :services, :auxiliars, column: :account_withholding_tax_ICA_id
  end
end
