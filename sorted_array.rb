class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = input_arr
    self.sort_array()
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    index = first_larger_index(new_ele)
    @internal_arr.insert(index, new_ele)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def sort_array
    temp_array = []
    temp_array.replace(@internal_arr) # make a copy of internal array
    @internal_arr = []     # empty internal array
    temp_array.each { |n| self.add(n) }  # add each element back, one at a time
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    if start_ind >= end_ind
      return end_ind
    else
      mid_index = (end_ind + start_ind) / 2
      if target > @internal_arr[mid_index]
        first_larger_index(target, mid_index+1, end_ind)
      else
        first_larger_index(target, start_ind, mid_index)
      end
    end
  end

  def index(target)
    i = first_larger_index(target) # this method the location of target, if found
    if @internal_arr[i] == target
      result =  i
    else
      result = nil
    end
  end
end




#   various code used for testing


# def print_array(an_array)
#   an_array.each { |n| print("#{n} ")}
#   puts
# end


# my_sorted_array = SortedArray.new([1,23,45,7,89,15])
# target_val = 12

# my_sorted_array = SortedArray.new(["abc", "def", "x", "cat"])
# target_val = "def"
# print_array(my_sorted_array.internal_arr)

# puts "first larger index for #{target_val} is #{my_sorted_array.first_larger_index(target_val)}"
# puts "#{target_val} was found at #{my_sorted_array.index(target_val)}"

# print_array(my_sorted_array.internal_arr)
# puts "item at 0 is #{my_sorted_array[0]}"
# puts "item at 2 is #{my_sorted_array[2]}"
# puts "item at 30 is #{my_sorted_array[30]}"
# puts "item at 1..3 is #{my_sorted_array[1..3]}"
# puts "first larger index for #{target_val} is #{my_sorted_array.first_larger_index(target_val)}"
# my_sorted_array.add(target_val)
# print_array(my_sorted_array.internal_arr)



