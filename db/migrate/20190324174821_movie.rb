class Movie < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :poster
      t.string :category
      t.timestamps
    end
  end
end
