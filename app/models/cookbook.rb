class Cookbook < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :description, presence: true, uniqueness: { case_sensitive: false }

    has_many :recipes
    has_many :users, through: :recipes
    
    # scope :large_cookbook, -> { joins(:recipes).where("recipes > 5")}

end

