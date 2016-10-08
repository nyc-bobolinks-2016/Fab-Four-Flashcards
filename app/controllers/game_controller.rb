
get '/rounds' do
  # id_array = params[:cards_left].split('-')
  # @cards_left = []
  # id_array.each do |id|
  #   @cards_left << Card.find(id)
  # end

  # p @cards_left
  @deck = Deck.first
  @category = @deck.theme
  @cards = Card.where(deck_id: @deck.id)


    # @cards.each { |card| Card.new }


  @card = @cards.first.question

  erb :'rounds/index'
end

get '/rounds/next' do
  # @deck.cards

   "Hi I am a get request #{@card}"
end

post '/rounds/next' do
  # get user answer
  # get Real answer

  # compare
  # redirect "/rounds/next"
  @deck = Deck.first
  @category = @deck.theme
  @cards = Card.where(deck_id: @deck.id)

  @card = @cards.first

  @card.question = "USA"
  # params[:card_id]
  redirect '/rounds/next'
end
