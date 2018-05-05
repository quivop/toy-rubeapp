class User < ApplicationRecord
	has_many :microfics
	validates :name, presence: true
	validates :pseud, presence: true
end
