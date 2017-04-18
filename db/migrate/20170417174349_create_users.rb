class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :confirm_email, :default => false
      t.references :group, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
