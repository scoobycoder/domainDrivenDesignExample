require './entity_dollar'
require './treasury'

describe 'Entity Dollar' do

  it 'should tell serial number' do
    entity_dollar = EntityDollar.new

    treasury = Treasury.new(entity_dollar)
    treasury.set_current_year
    treasury.create_serial_number
    entity_dollar = treasury.print

    entity_dollar.serial_number.should == '1502342'
    entity_dollar.ink_complete.should == true
    entity_dollar.year.should == 2015
  end
end