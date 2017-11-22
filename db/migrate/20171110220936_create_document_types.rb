class CreateDocumentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :document_types do |t|
      t.string :abbreviation
      t.string :name

      t.timestamps
    end
  end
end
