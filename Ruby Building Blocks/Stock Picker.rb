#time complexity = O(n^2)

def stockPicker(prices)
    pair = [0,0]
    profit = 0
    prices.each_with_index do |buy, i|
        # Find highest sell day
        sell = prices[i..-1].max
        if profit < (sell-buy)
                pair[0] = i
                pair[1] = prices[i..-1].index(sell)+i   # Find index of that sell day
                profit = sell-buy
        end
    end
    pair
end
                
puts stockPicker([17,3,6,9,15,8,6,1,10]).to_s

puts stockPicker([17,1]).to_s

puts stockPicker([1,90,1]).to_s

puts stockPicker([17,1,17]).to_s


