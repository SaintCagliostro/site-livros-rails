class Account < ApplicationRecord
  belongs_to :author
  #attr_accessor :password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, if: :password_present?

  private
  def password_present?
    password.present?
  end
end
