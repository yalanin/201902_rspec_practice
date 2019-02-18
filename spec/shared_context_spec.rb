RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it '使用外部實例變數' do
    expect(@foods.length).to eq(0)
    @foods << 'sushi'
    expect(@foods.length).to eq(1)
  end

  it '重置實例變數' do
    expect(@foods.length).to eq(0)
  end

  it '使用共享方法' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example in different file' do
  include_context 'common'

  it '使用共享變數' do
    expect(some_variable).to eq([1, 2, 3])
  end
end