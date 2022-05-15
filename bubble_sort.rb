class BubbleSort
  # @param [Object] arr
  # @param [Object] left_index
  # @param [Object] right_index
  # @param [Object] sorted
  # @param [Object] swap_count
  # @return [Object]
  def bubble_sort(arr, left_index, right_index, sorted, swap_count)
    count = swap_count
    # base case
    return arr if sorted

    if left_index >= arr.length - 1 && count.zero?
      bubble_sort(arr, 0, 1, true, 0)
    elsif left_index >= arr.length - 1
      bubble_sort(arr, 0, 1, sorted, 0)
    elsif arr[left_index] > arr[right_index]
      swap(arr, left_index, right_index)
      count+=1
      bubble_sort(arr, left_index + 1, right_index + 1, sorted, count)
    else
      bubble_sort(arr, left_index + 1, right_index + 1, sorted, count)
    end
  end

  private def swap(arr, left_index, right_index)
    left_value = arr[left_index]
    right_value = arr[right_index]
    arr[left_index] = right_value
    arr[right_index] = left_value
    arr
  end
end
