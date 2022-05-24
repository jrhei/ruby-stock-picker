require 'pry-byebug'
def stock_picker(stock_prices)
    days_to_buy_and_sell=[]
    sell_high = stock_prices[1]
    sell_high_day = 1
    stock_prices.each_with_index do |price, day|
        if sell_high <= price && price != stock_prices[0]
            sell_high = price
            sell_high_day = day
        end
    end
    
    buy_low = stock_prices[0]
    buy_low_day = 0
    stock_prices.each_with_index do |price, day|
        if buy_low >= price && day < sell_high_day
            buy_low = price
            buy_low_day = day
        end
    end 
    days_to_buy_and_sell.push(buy_low_day)
    days_to_buy_and_sell.push(sell_high_day)


    
    #binding.pry
    p days_to_buy_and_sell
    return days_to_buy_and_sell
    
end

stock_picker([17,3,6,9,15,8,6,1,10])