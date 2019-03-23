class AddCategoryColumnToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :category, :string
  end
end
