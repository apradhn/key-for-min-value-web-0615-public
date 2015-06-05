# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # code goes here
  if name_hash.empty?
    nil
  else
    nums = []
    name_hash.each do |key, value| 
      if nums.empty? 
        nums << value
      else
        if value > nums[0]
          nums.insert(1, value)
        elsif value < nums[0]
          nums.unshift(value)
        end
      end
    end
    min_value = nums[0]
    name_hash.find {|key, value| value == min_value}[0]    
  end

end