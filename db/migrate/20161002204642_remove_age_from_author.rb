class RemoveAgeFromAuthor < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :age, :integer
  end
end
