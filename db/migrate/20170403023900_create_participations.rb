class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :id_user
      t.integer :id_Event
      t.decimal :hours, :precision => 6, :scale => 2

      t.timestamps null: false
    end
  end
end
