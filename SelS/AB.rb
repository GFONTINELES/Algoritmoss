numbers = [102, 100, 3, 5, 29, 6, 7, 8, 23, 10]

(0...numbers.length - 1).each do |i|
  min_index = i
  (i + 1...numbers.length).each do |j|
    if numbers[j] < numbers[min_index]
      min_index = j
    end
  end
  numbers[i], numbers[min_index] = numbers[min_index], numbers[i] if i != min_index
end
array = [102, 100, 3, 5, 29, 6, 7, 8, 23, 10]
  puts "Before sort: #{array}"
  puts "After sort: #{numbers}"
