class AddRequirementProgressToEvents < ActiveRecord::Migration
  def change
    add_column :events, :requirement_progress, :decimal
  end
end
