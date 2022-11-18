class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :genre, :time_of_day, :image
  has_one :user
end
