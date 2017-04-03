class RenameIdEventToIdEvent < ActiveRecord::Migration
  def change
    rename_column :participations, :id_Event, :id_event
  end
end
