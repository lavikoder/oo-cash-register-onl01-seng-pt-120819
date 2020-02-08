class CashRegister

  attr_accessor :total, :discount, :items, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items = []
  end



  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += (price * quantity)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
  end

  def apply_discount
    if @discount <= 0
      return "There is no discount to apply."
    elsif @discount > 0
      puts "#{@total} :total amount"
      puts "#{@discount} :discount"

      amount_off = @total * (@discount.to_f / 100.to_f)
      puts "#{amount_off} :amount off"
      @total -= amount_off
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    #make quantity accessible for all methods by initializing it
    price = @price * @quantity
    totes = self.total
    @total = totes - price

    @items.pop()
  end
end
