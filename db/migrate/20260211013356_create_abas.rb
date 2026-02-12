class CreateAbas < ActiveRecord::Migration[8.1]
  def change
    create_table :abas do |t|
      t.references :genero, null: false, foreign_key: true
      t.references :editora, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
