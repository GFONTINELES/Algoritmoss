numbers = [3, 2, 1, 4, 41, 6, 8, 75, 90, 10]

numbers_length = numbers.length
swapped = true

while swapped
  swapped = false
  (1...numbers_length).each do |i|
    if numbers[i - 1] > numbers[i]
      numbers[i - 1], numbers[i] = numbers[i], numbers[i - 1]
      swapped = true
    end
  end
  numbers_length -= 1
end
array = [3, 2, 1, 4, 5, 6, 8, 7, 9, 10]
  puts "Before sort: #{array}"
  puts "After sort: #{numbers}"