class Author < ApplicationRecord
  has_many :generos, through: :books
  has_many :editoras, through: :books
  has_many :books, dependent: :destroy
  accepts_nested_attributes_for :books, allow_destroy: true


end
