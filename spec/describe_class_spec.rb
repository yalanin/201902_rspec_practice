class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  # subject { King.new('Boris') }
  # let(:louis) { King.new('Louis') }

  # using describe_class method to instead calling class name
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it '實例調用練習' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end