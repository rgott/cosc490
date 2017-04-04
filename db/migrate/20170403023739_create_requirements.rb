class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.decimal :amt_completed, :precision => 6, :scale => 2
      t.decimal :amt_goal, :precision => 6, :scale => 2

      t.timestamps null: false
    end
  end
end
