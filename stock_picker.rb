STOCKS = [17,3,6,9,15,8,6,1,10].freeze

def stock_picker(stocks)
    #the best day to buy
    @to_buy = stocks.min
    @buy_day = stocks.index(@to_buy)
    #the best day to sell
    @to_sell = stocks.max
    @sell_day = stocks.index(@to_sell)
end
stock_picker(STOCKS)
profit = @to_sell - @to_buy

puts "You bought stock for £#{@to_buy} and you sold for £#{@to_sell} making your total profit £#{profit}"
#return the best day to buy
puts "You bought on day #{@buy_day}"
#return the best day to sell
puts "You sold on day #{@sell_day}"