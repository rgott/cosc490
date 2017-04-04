class CreateSchoolAndGroups < ActiveRecord::Migration
  def change
    create_table :school_and_groups do |t|
      t.integer :id_school
      t.integer :id_group

      t.timestamps null: false
    end
  end
end
