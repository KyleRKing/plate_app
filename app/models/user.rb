class User < ActiveRecord::Base
  has_secure_password

  has_many :plate
  has_many :comments
end