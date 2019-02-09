Rspec.describe 'Card' do
  it '包含一種形態'do
  # specify '包含一種形態' do    功能同第二行
    card = Card.new('Ace of Spades')
    except(card.type).to eq('Ace of Spades')
  end
end