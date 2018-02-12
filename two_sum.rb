def two_sum(nums, target)
  # nums => [2,7,10,11,15,4]
  #   nums[0] => 2
  #   nums[1] => 7
 
  nums.each_with_index do |num, index|
    nums.each_with_index do |num2, index2|
      next if index2 == index
      
      check_num = num + num2
      if check_num == target
        return index, index2
      end
    end
  end
end

indices = two_sum([2,7,10,11,15,4], 21)
puts indices