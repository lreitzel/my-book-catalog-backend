class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :read, :genre_id
end
