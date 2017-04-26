class RenameIndexToOrderNumber < ActiveRecord::Migration
  def change
    rename_column :requirements, :index, :order_number
  end
end
