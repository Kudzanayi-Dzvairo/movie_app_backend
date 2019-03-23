class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password
  has_many :user_movies
  has_many :movies
end
