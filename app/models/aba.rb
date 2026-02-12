class Aba < ApplicationRecord
  belongs_to :genero
  belongs_to :editora
  belongs_to :author
  belongs_to :book
end
