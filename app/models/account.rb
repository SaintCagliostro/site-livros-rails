# app/models/account.rb
class Account < ApplicationRecord
  belongs_to :author
  # has_secure_password

  validates :email, presence: true, uniqueness: true
  attr_accessor :password
end
