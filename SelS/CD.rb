numbers = (1..1000).to_a

(0...numbers.length - 1).each do |i|
  min_index = i
  (i + 1...numbers.length).each do |j|
    if numbers[j] < numbers[min_index]
      min_index = j
    end
  end
  numbers[i], numbers[min_index] = numbers[min_index], numbers[i] if i != min_index
end

puts numbers


