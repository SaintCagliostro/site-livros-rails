class CreateEditoras < ActiveRecord::Migration[8.1]
  def change
    create_table :editoras do |t|
      t.string :name

      t.timestamps
    end
  end
end
