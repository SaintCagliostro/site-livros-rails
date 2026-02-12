class AddEmailPasswordToAccounts < ActiveRecord::Migration[8.1]
  def change
    add_column :accounts, :email, :string
    add_column :accounts, :password_digest, :string
    add_column :accounts, :confirmed, :boolean
  end
end
