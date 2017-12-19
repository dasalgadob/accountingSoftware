class User < ApplicationRecord
  belongs_to :person

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
  validates :username, presente: true, uniqueness: true
end
