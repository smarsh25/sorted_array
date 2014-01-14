class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = input_arr
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    # raise NotImplementedError.new("You need to implement the [] method!")
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end

a_sorted_array = [1,2,5,7,9,15]

my_sorted_array = SortedArray.new(a_sorted_array)

puts my_sorted_array.internal_arr
puts "item at 0 is #{my_sorted_array[0]}"
puts "item at 2 is #{my_sorted_array[2]}"
puts "item at 30 is #{my_sorted_array[30]}"
puts "item at 1..3 is #{my_sorted_array[1..3]}"

