class UserMovieSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :favorites, :user_id, :movie_id
  belongs_to :user
  belongs_to :movie
end
