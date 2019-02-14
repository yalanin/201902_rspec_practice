RSpec.describe Hash do
  # Hash in line 1 eqal these three ways adjudgment
  # let(:my_hash) { {} }
  # Hash.new
  # let(:subject) { Hash.new }

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
  end

  it 'isolate between example' do
    expect(subject.length).to eq(0)
  end
end