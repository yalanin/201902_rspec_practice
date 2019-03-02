class Person
  def a
    sleep(3)
    "Hello"
  end
end

RSpec.describe Person do
  context 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  context 'instance double' do
    it 'can only implement methods that are define on class' do
      # person = instance_double(Person, a: 'Hello', b: 20)
      
      person = instance_double(Person)
      allow(person).to receive(:a).with(3, 10).and_return('Hello')
    end
  end
end