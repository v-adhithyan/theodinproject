
def stock_picker(array)
  
  i = 0
  profit = 0
  min_index = max_index = 0
  
  while i + 1 < array.count
    
    min_index = i
    
    while (i + 1) < array.count and array[i] < array[i + 1]
      i += 1
    end 
    
    max_index = i
    
    if array[max_index] - array[min_index] > profit
      profit = array[max_index] - array[min_index]
      result = []
      result << min_index
      result << max_index
    end
    i += 1
  end
  
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,2,3,4,5,6,7,8,9])
p stock_picker([8,9,7,6,5,4,3,2])
p stock_picker([9,8,7,6,5,4,3,2])
p stock_picker([1,2])
p stock_picker([4, 3])