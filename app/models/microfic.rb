class Microfic < ApplicationRecord
	belongs_to :user
	validates :content, length: { maximum: 280 }, 
						presence: true
end
