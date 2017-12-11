class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :person, foreign_key: true
      t.string :comments
      t.decimal :total, precision: 15, scale: 2
      t.timestamps
    end
  end
end
