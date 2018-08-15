require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 20, total = 0)
    @total = total
    @discount = discount
    @transactions = []
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @items << [item] * quantity
    @transactions << [item, price, quantity]
    self.total += price * quantity
  end

  def apply_discount
    self.total = total - (total / 100) * discount
    return "After the discount, the total comes to $#{self.total}." unless self.total == 0
      return "There is no discount to apply."
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    last_transaction = @transactions.last
    last_total = self.total - add_item(last_transaction[0], last_transaction[1], last_transaction[2])
    binding.pry
  end
end
