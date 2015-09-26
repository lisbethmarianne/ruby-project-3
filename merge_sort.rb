def merge_sort(arr)
  return arr if arr.length == 1
  
  # cut into half and sort those with same method
  a = merge_sort(arr[0..arr.length/2 - 1])  
  b = merge_sort(arr[arr.length/2..-1])

  # merge 2 sorted arrays
  arr_sorted = []
  until a.empty? && b.empty? do
    if a.empty?
      arr_sorted << b[0] 
      b.shift
    elsif b.empty? || a[0] <= b[0]
      arr_sorted << a[0]
      a.shift
    elsif a[0] > b[0]
      arr_sorted << b[0] 
      b.shift
    end
  end
  arr_sorted
end

# p merge_sort([1,2,1])
# p merge_sort([45, 67, 23, 9, 65, 2, 17, -7])

