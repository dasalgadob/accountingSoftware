class AddCodeToDocumentTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :document_types, :code, :integer
  end
end
