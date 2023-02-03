numbers = (1..1000).to_a

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
