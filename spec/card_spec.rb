class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end



RSpec.describe Card do
  # it example describtion do
  # specify example describtion
  # 上二行功能相同      
  # end

  it '包含一個數字'do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it '包含一個類別' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end