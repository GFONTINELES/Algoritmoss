def quick_sort(array, low, high)
    if low < high
      pivot_index = partition(array, low, high)
      quick_sort(array, low, pivot_index - 1)
      quick_sort(array, pivot_index + 1, high)
    end
    array
  end
  
  def partition(array, low, high)
    pivot = array[high]
    i = low - 1
    (low...high).each do |j|
      if array[j] <= pivot
        i += 1
        array[i], array[j] = array[j], array[i]
      end
    end
    array[i + 1], array[high] = array[high], array[i + 1]
    i + 1
  end
  
  numbers = (1..1_000_000).to_a
  puts quick_sort(numbers, 0, numbers.length - 1)
  