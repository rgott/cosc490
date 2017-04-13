class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.decimal :hours, precision: 10, scale: 2
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
