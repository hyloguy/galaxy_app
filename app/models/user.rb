class User < ActiveRecord::Base
  belongs_to :planet
  has_secure_password
  validates :handle, presence: true
  validates :email, presence: true
  validates :planet, presence: true
end
