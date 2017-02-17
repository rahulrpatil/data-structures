# Given an array, check whether the array is in sorted order with recursion.

def array_sorted?(array, n)
  return if n == 1
  array[n - 1] < array[n - 2] ? false : array_sorted?(array, n - 1)
end

array1 = [3, 2, 4, 5]
puts array_sorted?(array1, array1.length)

array2 = [2, 4, 3, 5]
puts array_sorted?(array2, array2.length)
