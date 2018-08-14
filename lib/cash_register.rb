require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity
  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
  end


  def add_item(item, price, quantity = 1)
    self.total += price * quantity

  end

  def apply_discount
    total - (discount / 100 * total)
    binding.pry
  end



end
