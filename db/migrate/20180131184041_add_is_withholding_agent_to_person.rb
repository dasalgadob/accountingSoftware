class AddIsWithholdingAgentToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :is_withholding_agent, :boolean
  end
end
