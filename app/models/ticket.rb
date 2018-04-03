class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets
  validates :price, format: {with: /[0-9]{1,9}\b/ }

end
