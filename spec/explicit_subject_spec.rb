RSpec.describe Hash do
  subject(:bob) do
    {a: 1, b: 2}
  end
  
  # let(:bob) { {a: 1, b: 2} }

  it 'has to key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nexted example' do
    it 'has to key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end