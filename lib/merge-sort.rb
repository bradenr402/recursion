def merge_sort(array, sorted = [])
  return array if array.size < 2

  left = merge_sort(array[0...(array.size / 2)])
  right = merge_sort(array[(array.size / 2)..array.size])

  left.first <= right.first ? sorted << left.shift : sorted << right.shift until left.empty? || right.empty?

  sorted + left + right
end

p merge_sort([8, 4, 1, 0, 9, 10, 3, 6, 5, 7, 2])
