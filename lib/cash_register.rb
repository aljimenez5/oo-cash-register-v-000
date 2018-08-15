require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :item

  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def item=(item)
    

  def apply_discount
    self.total = total - (total / 100) * discount
    return "After the discount, the total comes to $#{self.total}." unless self.total == 0
      return "There is no discount to apply."
  end

  def items
    items = []
    add_item(item, price).map{|item| items << item}
  end

  def void_last_transaction
end
