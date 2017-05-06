class AddIsEventOrientedToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :is_event_oriented, :int
  end
end
