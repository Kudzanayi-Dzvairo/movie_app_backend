class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster, :description
  has_many :user_movies
  has_many :users
end
