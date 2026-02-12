class Genero < ApplicationRecord
  has_many :abas
  has_many :books, through: :abas
  has_many :authors, through: :abas
  has_many :editoras, through: :abas
end
