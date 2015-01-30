class VendingMachine

  def initialize(bill)
    @bill = bill
  end

  def purchase_candy
    return true if @bill.can_buy_candy
    false
  end

end