class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end



RSpec.describe Card do
  # three ways to refactor the repeat code
  
  # before do
  # before(:example) do
  # 上二行功能相同
  #   @card = Card.new('Ace', 'Spades')
  # end

  # def card
  #   Card.new('Ace', 'Spades')
  # end

  let(:card) { Card.new('Ace', 'Spades') }

  # lazy loading example
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 }

  # it example describtion do
  # specify example describtion
  # 上二行功能相同      
  # end

  it '包含一個數字且數字可變換'do  
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it '包含一個類別' do
    expect(card.suit).to eq('Spades')
  end
end