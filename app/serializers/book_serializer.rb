class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :read
  has_one :genre
end
