class Book < ApplicationRecord
  belongs_to :author
  has_many :abas
  has_many :generos, through: :abas
  has_many :editoras, through: :abas

end
