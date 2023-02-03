def merge_sort(array)
    return array if array.length <= 1
  
    mid = array.length / 2
    left_array = array[0, mid]
    right_array = array[mid, array.length - mid]
  
    left_sorted = merge_sort(left_array)
    right_sorted = merge_sort(right_array)
  
    merge(left_sorted, right_sorted)
  end
  
  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end
    result + left + right
  end
  
  # Test
  array = (1..1000).to_a.shuffle
  puts "Before sort: #{array}"
  puts "After sort: #{merge_sort(array)}"
  