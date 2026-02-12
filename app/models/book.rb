class Book < ApplicationRecord
  belongs_to :author
  belongs_to :editora
  belongs_to :genero
end
