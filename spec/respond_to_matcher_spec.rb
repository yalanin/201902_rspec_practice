class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def perchase(number)
    "我買惹 #{number} 巧克力"
  end
end

RSpec.describe HotChocolate do
  it '檢查是否有相應方法' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :perchase)
  end

  it '檢查帶參數的方法' do
    expect(subject).to respond_to(:perchase)
    expect(subject).to respond_to(:perchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink, :discard, :perchase) }
  it { is_expected.to respond_to(:perchase).with(1).arguments }
end