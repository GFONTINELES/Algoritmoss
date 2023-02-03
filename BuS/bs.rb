numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

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

puts numbers
