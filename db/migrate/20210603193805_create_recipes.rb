class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :instructions
      t.string :genre
      t.text :time_of_day
      t.string :image

      t.timestamps
    end
  end
end
