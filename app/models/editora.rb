class Editora < ApplicationRecord
  has_many :books, dependent: :nullify
  has_many :authors, through: :books

end
