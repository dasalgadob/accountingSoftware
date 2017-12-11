class CreateInvoiceServices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoice_services do |t|
      t.references :invoice, foreign_key: true
      t.references :service, foreign_key: true
      t.string :description
      t.decimal :value
      t.decimal :iva
      t.decimal :withholding_tax
      t.decimal :withholding_tax_ica

      t.timestamps
    end
  end
end
