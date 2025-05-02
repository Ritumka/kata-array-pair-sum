require "set" # the Set class is a collection of unordered, unique values—kind of like an array, but with no duplicates allowed

def pair_sum(array, target)
    # TODO
    pairs = []
    used_nums = Set.new() # track previous nums

    array.each do |num|
        pair_num = target - num
        if  used_nums.include?(pair_num)
            pairs.push([pair_num, num])
        end
        used_nums.add(num)
    end

    return pairs
  end

