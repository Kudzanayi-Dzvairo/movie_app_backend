class AddFavoritesColumntoUserMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :user_movies, :favorites, :boolean, :default => false
  end
end
