class Book < ApplicationRecord
  belongs_to :author
  has_many :abas
  has_many :generos #, through: :abas
  belongs_to :editora
end
