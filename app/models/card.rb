class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

def answered_correctly?
  @user.guess == card[:answer]
end

end
