class CreateUserAndRoles < ActiveRecord::Migration
  def change
    create_table :user_and_roles do |t|
      t.integer :id_user
      t.integer :id_role

      t.timestamps null: false
    end
  end
end
