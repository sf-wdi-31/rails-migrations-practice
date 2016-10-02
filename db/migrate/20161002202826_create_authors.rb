class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
