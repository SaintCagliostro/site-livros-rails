class AddGeneroToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :genero, null: true, foreign_key: true

    Book.where(genero_id: nil).update_all(genero_id: 1)

    change_column_null :books, :genero_id, false
  end
end
