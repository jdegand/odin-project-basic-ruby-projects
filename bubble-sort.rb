
=begin
def bubble_sort(array)
    n = array.length-1
    i = 0

    while i < array.length do
        if (array[i] > array[i+1])
        tmp = array[i]
        array[i] = array[i+1]
        array[i+1] = tmp
        end
        i += 1
    end
    array
end

p bubble_sort([4,3,78,2,0,2])
=end

# works
def bubble_sort(array)

  loop do
  swapped = false
  (array.length-1).times do |i|

  if(array[i] > array[i+1])
    array[i], array[i+1] = array[i+1], array[i]
    swapped=true
    end
  end
  break if !swapped
  end

  return array
end

p bubble_sort([4,3,78,2,0,2])
