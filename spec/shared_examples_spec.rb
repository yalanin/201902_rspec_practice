RSpec.shared_examples 'a ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a ruby object with three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a ruby object with three elements'
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'a ruby object with three elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  # you can use these two methods below
  # subject { described_class.new }
  let(:ttee){ described_class.new }
  include_examples 'a ruby object with three elements'
end