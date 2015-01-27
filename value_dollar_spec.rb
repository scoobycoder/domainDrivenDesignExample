require './value_dollar'
require './vending_machine'

describe 'Value Dollar' do

  it 'should allow for purchases' do
    value_dollar = ValueDollar.new(1)
    vending_machine = VendingMachine.new(value_dollar)

    vending_machine.purchase.should == true
  end
  
end