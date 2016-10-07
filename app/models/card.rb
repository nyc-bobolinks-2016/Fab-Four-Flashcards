class Card < ActiveRecord::Base
  belongs_to :deck

def answered_correctly?
  @user.guess == card[:answer]
end

end
