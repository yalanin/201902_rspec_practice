RSpec.describe Array do
  it 'should be empty after created' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject.push 'hello world'
  end

  it 'length of array' do
    expect(subject.length).to eq(1)
  end
end