class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :year, type: Integer
  field :isbn, type: String
  field :genre, type: String

  validates :title, presence: true
  validates :author, presence: true
  validates :year, numericality: true, presence: true
  validates :isbn, uniqueness: true, presence: true
  validates :genre, presence: true


end
