class CreateGroupAndUsers < ActiveRecord::Migration
  def change
    create_table :group_and_users do |t|
      t.integer :id_group
      t.integer :id_user
      t.integer :id_role

      t.timestamps null: false
    end
  end
end
