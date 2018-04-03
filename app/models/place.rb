class Place < ApplicationRecord
	has_many :events
	validates :name, length: { minimum: 20 }
	validates :capacity, format: {with: /[0-9]{1,9}\b/ }
end
