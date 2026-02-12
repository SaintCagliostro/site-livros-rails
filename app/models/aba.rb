class Aba < ApplicationRecord
  belongs_to :genero
  belongs_to :editora
  belongs_to :author
  belongs_to :book

  create_table :abas do |t|
    t.references :book, null: false, foreign_key: true
    t.references :genero, null: false, foreign_key: true
    t.references :editora, null: false, foreign_key: true
    t.references :author, null: false, foreign_key: true
    t.timestamps
  end

end
