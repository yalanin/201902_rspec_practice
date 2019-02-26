RSpec.describe 'include_matcher' do
  describe '熱巧克力' do
    it 'checks for substring inclusion' do
      expect(subject).to include('熱')
      expect(subject).to include('巧克')
      expect(subject).to include('克力')
    end

    it {is_expected.to include('巧克')}
  end

  describe [10, 20, 30] do
    it '檢查內容不管順序' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20, 30, 10) }
  end

  describe ({ a: 2, b: 4 }) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it 'can check key-value pair' do
      expect(subject).to include(a: 2)
    end

    it {is_expected.to include(:b)}
    it {is_expected.to include(b: 4, a: 2)}
  end
end