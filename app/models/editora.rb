class Editora < ApplicationRecord
  has_many :abas
  has_many :books, through: :abas
  has_many :authors, through: :abas
  has_many :generos, through: :abas

end
