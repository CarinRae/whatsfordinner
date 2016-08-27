class Recipe < ApplicationRecord
	has_many :ingredients
	has_many :notes
	accepts_nested_attributes_for :ingredients,allow_destroy: true
	accepts_nested_attributes_for :notes , allow_destroy: true

validates :title, :cooking_date, presence: true

end

