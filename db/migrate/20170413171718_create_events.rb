class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.decimal :requirement_progress, precision: 10, scale: 2
      t.references :requirement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
