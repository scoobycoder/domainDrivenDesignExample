require './value_dollar'
require './vending_machine'

describe 'Value Dollar' do

  it 'should allow for purchases' do
    value_dollar = ValueDollar.new(1)
    vending_machine = VendingMachine.new(value_dollar)

    vending_machine.purchase.should == true
  end

  it 'should not allow for purchase if the value is less than 1' do
    value_dollar = ValueDollar.new(0.5)

    vending_machine = VendingMachine.new(value_dollar)

    vending_machine.purchase.should == false
  end


end