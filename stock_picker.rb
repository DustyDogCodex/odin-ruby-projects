def stock_picker(array)
    most_profit = 0
    best_days = ''

    array.each_with_index do |price,index|
        array.each_with_index do |price2,index2|

            profit = price2 - price
        
            if profit > most_profit && index < index2
                most_profit = profit
                best_days = [index,index2]
            end
        end
    end
    puts "The profit will be: $" + most_profit.to_s
    print "Best days to trade are: " + best_days.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([100,20,45,65,265,150])
