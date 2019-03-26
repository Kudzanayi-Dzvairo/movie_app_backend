class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest
  has_many :user_movies
  has_many :movies
end
