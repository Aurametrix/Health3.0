def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end

# Testing
a = [9,4,10,12,3,5,10,3,2,25,6,21,33,23,19,13,38,26,12,3]
bubble_sort(a)
puts a

print "Here is another sorted example:\n"

that_array = this_array = [22,66,4,44,5,7,392,22,8,77,33,118,99,6,1,62,29,14,139,2]
49.times {|variable| that_array = that_array + this_array}
bubble_sort(that_array)
puts a
