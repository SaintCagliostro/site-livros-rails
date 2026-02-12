class AddPasswordToAccounts < ActiveRecord::Migration[8.1]
  def change
    add_column :accounts, :password, :string
  end
end
