class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
