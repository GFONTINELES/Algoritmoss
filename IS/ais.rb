def insertion_sort(array)
    n = array.length
    puts "Antes do sort: #{array}"
    (1...n).each do |i|
    j = i
    while j > 0 && array[j-1] > array[j]
    array[j-1], array[j] = array[j], array[j-1]
    j -= 1
    end
    end
    puts "Depois do sort: #{array}"
    array
    end
    
    array = (1..10).to_a.reverse
    sorted_array = insertion_sort(array)