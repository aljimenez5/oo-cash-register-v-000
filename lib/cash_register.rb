require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    self.total = total - (total / 100) * discount
    return "After the discount, the total comes to $#{self.total}." unless self.total == 0
      return "There is no discount to apply."
  end

  def items
    self.items = []
    add_item(item, price).map{|item| items << item}
  end

  def void_last_transaction
  end
end
