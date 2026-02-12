class Genero < ApplicationRecord
  has_many :abas
  has_many :books, dependent: :restrict_with_error
  has_many :authors #, through: :abas
  has_many :editoras #, through: :abas
end
