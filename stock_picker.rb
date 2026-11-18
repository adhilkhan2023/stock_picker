def stock_picker(stock_prices)
  highest_price = stock_prices.max

  profit = 0

  best_days = []

  stock_prices.each_with_index do |current_price, index|
    if index == 0 && current_price == highest_price
      next
    elsif index == stock_prices.length - 1
      next
    end

    next_index = index + 1

    while next_index <= stock_prices.length-1
      if profit < (stock_prices[next_index] - current_price)
        profit = stock_prices[next_index] - current_price

        best_days[0] = index
        best_days[1] = next_index

        next_index += 1
      else
        next_index += 1
      end
    end
  end

  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])