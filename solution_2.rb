def pair_sum(array, target)
    # require "debug"; debugger
    # sort array
    sort_array = array.sort
  
    # result array
    result = []
  
    # left and right pointers 
    left = 0 # start 
    right = array.length - 1 # end
  
    # while left is less than right pointer
    while left < right
      # the current sum
      current_sum = sort_array[left] + sort_array[right]
  
      # if the current sum is equal to the target
      if current_sum == target
        # create temp pair array
        pair = []
        pair.push(sort_array[left])
        pair.push(sort_array[right])
        result.push(pair)
  
        # move both left and right
        left += 1
        right -= 1
  
      # else if current sum is larger than target
      elsif current_sum < target
        # move left pointer
        left += 1
  
      # else if current cum is greater than target
      else # current_sum > target
        # move the right pointer
        right -= 1
      end
    end
  
    return result
  end