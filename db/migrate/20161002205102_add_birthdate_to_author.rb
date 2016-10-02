class AddBirthdateToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :birthdate, :date
  end
end
