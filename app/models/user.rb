class User < ApplicationRecord
  validates :first_name, presence:true, length: { minimum: 2 }
  validates :last_name, presence:true, length: { minimum: 2 }
  validates :description, length: { minimum: 10 }
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :age, numericality: { only_integer: true }

  belongs_to :city
  has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
end
