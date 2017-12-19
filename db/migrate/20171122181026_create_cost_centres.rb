class CreateCostCentres < ActiveRecord::Migration[5.0]
  def change
    create_table :cost_centres do |t|
      t.string :name

      t.timestamps
    end
  end
end
