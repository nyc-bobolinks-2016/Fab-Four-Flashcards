Deck.create(:theme => 'World Capitals')
Deck.create(:theme => 'Celebs: Hot or Not?')

Card.create(:question => 'Brad Pitt (hot or not)', :answer => 'not', :deck_id => 2)
Card.create(:question => 'Ryan Gosling (hot or not)', :answer => 'hot', :deck_id => 2)
Card.create(:question => 'Queen Elizabeth II (hot or not)', :answer => 'not', :deck_id => 2)

Card.create(:question => 'Canada', :answer => 'Ottawa', :deck_id => 1)
Card.create(:question => 'Russia', :answer => 'Moscow', :deck_id => 1)
Card.create(:question => 'Brazil', :answer => 'Brasilia', :deck_id => 1)
