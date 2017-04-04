class CreateUserAndGroups < ActiveRecord::Migration
  def change
    create_table :user_and_groups do |t|
      t.integer :id_group
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
