class AddAddressDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :address, :street_address
    add_column :users, :street_address2, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :country, :string
    change_column :users, :phone, :string
  end
end
