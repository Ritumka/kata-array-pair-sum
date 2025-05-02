require "set"

def pair_sum(array, target)
  pairs = []
  track = array.to_set()

  array.each do |num|
    pair_num = target - num
    track.delete(num)
    
    if (track.include?(pair_num))
      pairs.push([num, pair_num])
      track.delete(pair_num)
    end

  end

  return pairs
end

# doesn't work for pair_sum([0, -1, 2, -3, 1], -2)