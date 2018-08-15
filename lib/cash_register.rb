require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transactions

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
    @items = []
    self.add_item(item, price, quantity = 1).each {|item| @items << item}
    binding.pry
  end

  def transactions=(transactions)
    @transactions = []
  end

  def void_last_transaction
    self.add_item(item, price)
  end
end
