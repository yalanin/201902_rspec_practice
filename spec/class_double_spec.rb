class Deck
  def self.build
    # bussiness logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # class_double(Deck, build: ['Ace', 'Queen'])
    
    # 尚未創建 class 時，可使用字串先代替
    # deck_class = class_double('Deck', build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace']).as_stubbed_const #不會去呼叫真正的 class

    deck_class = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const
    expect(deck_class).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end