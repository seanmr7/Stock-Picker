#Stock picker method

stock_days = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
    current_profit = 0
    new_profit = 0
    buy_sell = []

    arr.each_with_index do |buy, buy_day|
        arr.each_with_index do |sell, sell_day|
            new_profit = sell - buy
            if new_profit > current_profit && buy_day < sell_day
               buy_sell = [buy_day, sell_day]
               current_profit = new_profit
            end
        end
    end
    buy_sell
end

p stock_picker (stock_days)