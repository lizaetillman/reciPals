class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :cookbooks, through: :recipes 
  
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true


  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      u.username = response[:info][:name]
      u.email = response[:info][:email]
      u.password = SecureRandom.hex(15)
      # byebug
    end
  end
end
