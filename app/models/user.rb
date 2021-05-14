class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :cookbooks, through: :recipes # returns array/collection
end
