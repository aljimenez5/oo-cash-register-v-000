require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount.to_f / 100
  end


  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
  end



end
