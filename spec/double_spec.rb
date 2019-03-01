RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # 幾種使用方法
    # 方法一
    # stuntman = double("Mr. Danger", fall_of_ladder: 'Ouch', light_on_fire: true)    
    # expect(stuntman.fall_of_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # 方法二
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_of_ladder) # 此時預設回傳值回 nil
    # expect(stuntman.fall_of_ladder).to be_nil
    # allow(stuntman).to receive(:fall_of_ladder).and_return('Ouch') # 自定義回傳值
    # expect(stuntman.fall_of_ladder).to eq('Ouch')

    # 方法三
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_of_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_of_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end