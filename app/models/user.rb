class User < ActiveRecord::Base

has_secure_password

has_many :rounds
has_many :guesses, through: :rounds
has_many :played_decks, through: :rounds, source: :deck
has_many :played_cards, through: :decks, source: :card

validates :email, :name, presence: true
validates :email, format: {with: /A\w+@\w+.\w+\z/i, message: "Must be a valid email address"}
validates :email, uniqueness:true
validates :password, length: { minimum: 6 , message: "The password must be longer than 6 characters! please retry"}

end
