class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end



RSpec.describe Card do
  # two ways to refactor the repeat code
  
  # before do
  # before(:example) do
  # 上二行功能相同
  #   @card = Card.new('Ace', 'Spades')
  # end

  def card
    Card.new('Ace', 'Spades')
  end

  # it example describtion do
  # specify example describtion
  # 上二行功能相同      
  # end

  it '包含一個數字'do  
    expect(card.rank).to eq('Ace')
  end

  it '包含一個類別' do
    expect(card.suit).to eq('Spades')
  end
end