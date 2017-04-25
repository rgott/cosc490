class AddIndexToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :index, :int
  end
end
