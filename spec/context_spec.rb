RSpec.describe '#even? method' do
  # two ways to rule complex conditions  
  context '偶數' do
    it 'return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe '奇數' do
    it 'return false' do
      expect(5.even?).to eq(false)
    end
  end
end