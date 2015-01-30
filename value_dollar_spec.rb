require './value_dollar'
require './vending_machine'

describe 'Value Dollar' do

  it 'should allow for purchase if value is one' do
    value_dollar = ValueDollar.new(1)
    vending_machine = VendingMachine.new(value_dollar)

    vending_machine.purchase_candy.should == true
  end

  it 'should not allow purchase if value is less than one' do
    value_dollar = ValueDollar.new(0.5)
    vending_machine = VendingMachine.new(value_dollar)

    vending_machine.purchase_candy.should == false
  end

end