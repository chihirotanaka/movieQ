class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :column
      t.integer :year, null:false, default: 0
      t.integer :theme_title, null:false, default: 0

      t.timestamps
    end
  end
end
