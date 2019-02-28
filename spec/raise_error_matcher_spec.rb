RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  # 太籠統不要這樣用
  # it 'can check any error' do
  #   expect { some_method }.to raise_error
  # end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10/0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for user-create error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end

  # 這樣寫不會過，因為 it method 不會創建 class
  # it CustomError do
  #   expect { raise described_class }.to raise_error(CustomError)
  # end

  # 這樣寫會過，因為會出現此錯誤
  it CustomError do
    expect { raise described_class }.to raise_error(TypeError)
  end

  describe CustomError do
    it 'can check for user-create error' do
      expect { raise described_class }.to raise_error(CustomError)
    end
    
    # 也不能用單行指令書寫，因為 raise_error 預設用花括號呈現(expected CustomError but was not given a block)
    # it { is_expected.to raise_error(CustomError) }
  end
end