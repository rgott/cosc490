class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.decimal :amt_complete, precision: 10, scale: 2
      t.decimal :amt_goal, precision: 10, scale: 2
      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
