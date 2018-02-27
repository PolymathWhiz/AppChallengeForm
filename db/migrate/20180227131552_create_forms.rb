class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.integer :type

      t.timestamps
    end
  end
end
