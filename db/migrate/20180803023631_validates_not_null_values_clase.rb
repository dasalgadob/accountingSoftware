class ValidatesNotNullValuesClase < ActiveRecord::Migration[5.0]
  def change
    change_column_null :clases, :number, false
    change_column_null :clases, :name, false
  end
end
