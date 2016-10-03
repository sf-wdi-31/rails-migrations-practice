class PreventNullOnName < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :name, :string, null: false
  end
end
