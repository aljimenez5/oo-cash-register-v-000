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
    if discount != nil
      self.total = total - (total / 100) * discount
        puts "After the discount, the total comes to $#{self.total}."
      end
    else
  end



end
