require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item

  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
  end


  def add_item(item, price, quantity = 1)
    self.item = []
    return price * quantity
    binding.pry
  end

  def apply_discount
    self.total = total - (total / 100) * discount
    return "After the discount, the total comes to $#{self.total}." unless self.total == 0
      return "There is no discount to apply."
  end

  def self.items
    items = []
    add_item(item, price, quantity = 1).split(',')
    items << add_item[0]

  end

end
