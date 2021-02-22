
=begin
def stock_picker(array)
    max = array.max
    min = array.min
    puts(array.index(array.max))
end


stock_picker([17,3,6,9,15,8,6,1,10])

def stock_picker(array)
   result = array.collect{|i| array.max - array.index(i)}
   p result
end


stock_picker([17,3,6,9,15,8,6,1,10])


def stock_picker(array)
   result = array.map{|i| array.max - i}
   p result
end


stock_picker([17,3,6,9,15,8,6,1,10])


#use this to find where to slice the array
def stock_picker(array)
   result = array.map{|i| array.max - i}
   p result.index(0)
end


stock_picker([17,3,6,9,15,8,6,1,10])
=end

#easy to understand but definitely not optimal

def stock_picker(array)
    result = []
    profit = 0
    array.uniq! # good idea or bad idea ?
    array.each_with_index { |price1, index1|
      array.each_with_index { |price2, index2|

        if index1 < index2

          if (price2 - price1) > profit
            profit = price2 - price1
            result[0] = price1
            result[1] = price2
          end
        end
      }
    }
    puts "if you bought at $#{result[0]} and sold at $#{result[1]} you would have made $#{profit}"
  end

  stock_picker([17,3,6,9,15,8,6,1,10])
