 # /**********************************************************************
 #  *                          Homework VI                               *
 #  *                                                                    *
 #  *  Problem: Quicksort                                                *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of numbers,                       *
 #  *          return a sorted array using Quicksort sort.               *
 #  *                                                                    *
 #  *  Input:  An unsorted array                                         *
 #  *  Output: A sorted array                                            *
 #  *                                                                    *
 #  *  Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]               *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/

 # /**********************************************************************
 #  *                                                                    *
 #  *  Problem: Mergesort                                                *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of numbers,                       *
 #  *          return a sorted array using Mergesort sort.               *
 #  *                                                                    *
 #  *  Input:  An unsorted array                                         *
 #  *  Output: A sorted array                                            *
 #  *                                                                    *
 #  *  Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]               *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/


def quickSort(array)
  if array.length <= 1
    puts "returning an array of one"
    return array
  end

  pivot_index = array.length/2
  pivot_val = array[pivot_index]
  before = []
  after = []

  array.each do |num|
    if num < pivot_val
      before << num
    elsif num > pivot_val
      after << num
    end
  end

  puts "Before: #{before}"
  puts "After: #{after}"

  return quickSort(before) + [pivot_val] + quickSort(after)
end

array = [4,15,16,50,8,23,42,108]

# p quickSort(array)


#
# def mergeSort(array)
#   debug = false
#   puts "Starting mergeSort with #{array}" if debug
#   return array if array.length <= 1
#
#   mid = (array.length-1) / 2
#   puts "mid: #{mid}" if debug
#
#   left = array[0..mid]
#   puts "left: #{left}" if debug
#   right = array[mid+1..-1]
#   puts "right: #{right}" if debug
#
#   left = mergeSort(left)
#   right = mergeSort(right)
#
#   puts "About to call merge #{left} and #{right}" if debug
#   array = merge(left, right)
#
#   puts "At bottom of megerSort array: #{array}" if debug
#   return array
# end




# 
# def merge_sort(array)
#   if array.length <= 1
#     puts "Array length: #{array.length}"
#     return array
#   end
#
#   mid = array.length/2
#   left = array[0..mid]
#   right = array[mid+1..-1]
#
#   left = merge_sort(left)
#   right = merge_sort(right)
#
#   # merge(left, right)
# end
#
# merge_sort(array)

private

def merge(left_array, right_array)
  debug = false
  left_index = 0; right_index = 0
  merged_array = []

  puts "\n  ---- Starting merge with #{left_array} and #{right_array} ----"  if debug
  while left_array[left_index] || right_array[right_index]
    puts "  left_index: #{left_index}" if debug
    puts "  left_array[left_index]: #{left_array[left_index]}" if debug
    puts "  right_index: #{right_index}" if debug
    puts "  right_array[right_index]: #{right_array[right_index]}" if debug
    if left_array[left_index] && right_array[right_index]
      if left_array[left_index] < right_array[right_index]
        merged_array << left_array[left_index]
        left_index += 1
      else
        merged_array << right_array[right_index]
        right_index += 1
      end
    elsif left_array[left_index]
      merged_array << left_array[left_index]
      left_index += 1
    else
      merged_array << right_array[right_index]
      right_index += 1
    end
    puts "  merged_array: #{merged_array}"  if debug
  end
  puts "  ---- About to return merged_array: #{merged_array} ----" if debug
  puts " " if debug
  return merged_array
end












# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

# require 'test/unit'

# class QuickSortTest < Test::Unit::TestCase
#   def test_quickSort_should_handle_example_case
#     test = quickSort([3,9,1,4,7])
#     answer = [1,3,4,7,9]
#
#     assert_equal(answer, test);
#   end
#
#   def test_quickSort_should_handle_empty_input
#     test = quickSort([])
#     answer = []
#
#     assert_equal(answer, test);
#   end
#
#   def test_quickSort_should_handle_large_input
#     testInput = []
#     $i = 1000000
#
#     while $i > 0
#       toPush = Random.rand(1000000)
#       testInput.push(toPush)
#       $i = $i - 1
#     end
#
#     test = quickSort(testInput)
#     assert_equal(testInput.sort, test)
#   end
#
# end

# class MergeSortTest < Test::Unit::TestCase
#   def test_mergeSort_should_handle_example_case
#     test = mergeSort([8,3,2,10])
#     answer = [2,3,8,10]
#
#     assert_equal(answer, test);
#   end
#
#   def test_mergeSort_should_handle_empty_input
#     test = mergeSort([])
#     answer = []
#
#     assert_equal(answer, test);
#   end
#
#   def test_mergeSort_should_handle_large_input
#     testInput = []
#     $i = 1000000
#
#     while $i > 0
#       toPush = Random.rand(1000000)
#       testInput.push(toPush)
#       $i = $i - 1
#     end
#
#     test = mergeSort(testInput)
#     assert_equal(testInput.sort, test)
#   end
#
# end
