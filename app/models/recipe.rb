class Recipe < ApplicationRecord
		belongs_to :user
		has_many :ingredients, :dependent => :destroy
		has_many :notes
		accepts_nested_attributes_for :ingredients,allow_destroy: true
		accepts_nested_attributes_for :notes , allow_destroy: true

	validates :title, :cooking_date, presence: true

end

