class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.decimal :total_hours, :precision => 6, :scale => 2
      t.integer :id_req

      t.timestamps null: false
    end
  end
end
