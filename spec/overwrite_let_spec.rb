class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it '儲存語言' do
    expect(language.name).to eq('Python')
  end

  context '未傳參數' do
    let(:language) { ProgrammingLanguage.new }
    
    it '使用初始設定' do
      expect(language.name).to eq('Ruby')
    end
  end
end