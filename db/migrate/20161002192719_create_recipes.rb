class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.string :posted

      t.timestamps
    end
  end
end
