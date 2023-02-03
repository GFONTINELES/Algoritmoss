def heap_sort(array)
    n = array.length
  
    # Build max heap
    (n / 2 - 1).downto(0) do |i|
      heapify(array, n, i)
    end
  
    # Heap sort
    (n - 1).downto(0) do |i|
      array[0], array[i] = array[i], array[0]
      heapify(array, i, 0)
    end
  
    array
  end
  
  def heapify(array, n, i)
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
  
    if left < n && array[left] > array[largest]
      largest = left
    end
  
    if right < n && array[right] > array[largest]
      largest = right
    end
  
    if largest != i
      array[i], array[largest] = array[largest], array[i]
      heapify(array, n, largest)
    end
  end
  
  # Test
  array = [1, 10, 2, 9, 3, 8, 4, 7, 5, 6]
  puts "Before sort: #{array}"
  puts "After sort: #{heap_sort(array)}"
  