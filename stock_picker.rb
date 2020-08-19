def stock_picker(stock_sched)

    profits = {}
    #for each element in stock_sched, do a calculation to determine profit 
    #using each following day. create an array made of buy and sell day, 
    #and make that a new key in profits {} with the value being the calulated profit 

    stock_sched.each_with_index do |buy_day_price, buy_day_index|
        remaining_array_elements = stock_sched.length - (buy_day_index + 1)
        for i in 1..remaining_array_elements
        sell_day_price = stock_sched[buy_day_index + i]
        sell_day_index = buy_day_index+i
        profits[[buy_day_index, sell_day_index]] = sell_day_price - buy_day_price
        end
    end

    #get a list of all values from profits{} and return the key with the highest value

    profit_array = profits.values
    max_profit = profit_array.max

    return profits.keys[profit_array.index(max_profit)]

end

print stock_picker([17,3,6,9,15,8,6,1,10])