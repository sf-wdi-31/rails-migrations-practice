class RemoveAddressFromAuthors < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :address, :string
  end
end
