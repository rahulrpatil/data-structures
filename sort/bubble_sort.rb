def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    (n - 1).times do |i|
        if array[i] > array[i+1]
          array[i],array[i+1] = array[i+1],array[i]
          swapped = true
        end
    end
    break unless swapped
  end
  array
end

a = [2,3,1,4,6,3,5]
p bubble_sort(a)
