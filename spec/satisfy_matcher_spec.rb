RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  # subject { 'racecas' }

  it 'is a polindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('to be a polindrome') do |value|
      value == value.reverse
    end
  end
end