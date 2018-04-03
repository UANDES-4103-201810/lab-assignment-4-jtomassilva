class User < ApplicationRecord
	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates :password, length: { in: 8..12 }
	validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/,
															 message: "invalid email" }
	validates :phone, format: { with: /[0-9]{9,12}\b/,
																		message: "invalid phone number" }
end
