class AddEditoraToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :editora, null: true, foreign_key: true

    Book.where(editora_id: nil).update_all(editora_id: 1)

    change_column_null :books, :editora_id, false
  end
end
