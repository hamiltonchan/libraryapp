class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :year, type: Integer
  field :ISBN, type: Author
  field :genre, type: String
end
