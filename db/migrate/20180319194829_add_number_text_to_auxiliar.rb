class AddNumberTextToAuxiliar < ActiveRecord::Migration[5.0]
  def change
    add_column :auxiliars, :number_text, :string
  end
end
