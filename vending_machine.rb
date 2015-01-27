class VendingMachine

  def initialize(bill)
    @bill = bill
  end

  def purchase
    return true if @bill.can_buy_candy
    return false
  end

end