class ChangeTypeName < ActiveRecord::Migration[5.1]
  def change
    rename_column :forms, :type, :category
  end
end
