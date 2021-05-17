class Recipe < ApplicationRecord
    validates :user_id, presence: true
    validates :cookbook_id, presence: true
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :description, presence: true, uniqueness: { case_sensitive: false }

    belongs_to :user
    belongs_to :cookbook
end
