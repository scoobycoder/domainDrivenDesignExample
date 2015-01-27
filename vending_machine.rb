class VendingMachine

  def initialize(bill)
    @bill = bill
  end

  def purchase
    return true if @bill.purchase_power_of_one
    return false
  end

end