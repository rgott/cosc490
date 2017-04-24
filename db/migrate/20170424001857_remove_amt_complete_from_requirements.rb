class RemoveAmtCompleteFromRequirements < ActiveRecord::Migration
  def change
    remove_column :requirements, :amt_complete, :decimal
  end
end
