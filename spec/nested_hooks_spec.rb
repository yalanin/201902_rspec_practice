RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'outer before context'
  end

  before(:example) do
    puts 'outer before example'
  end

  it 'basic math' do
    expect( 1 + 1 ).to eq(2)
  end

  context '假裝有條件其實沒有' do
    before(:context) do
      puts 'inner before context'
    end
  
    before(:example) do
      puts 'inner before example'
    end

    # it 'more basic math' do
    #   expect( 1 + 1 ).to eq(2)
    # end
  
    # it 'substraction' do
    #   expect( 5 - 3 ).to eq(2)
    # end
  end
end