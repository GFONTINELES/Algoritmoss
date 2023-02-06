numbers = [2, 1, 3, 4, 29, 6, 7, 8, 23, 10]

(1...numbers.length).each do |i|
  key = numbers[i]
  j = i - 1
  while j >= 0 and numbers[j] > key
    numbers[j + 1] = numbers[j]
    j -= 1
  end
  numbers[j + 1] = key
end

puts numbers
