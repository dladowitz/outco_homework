 # /**********************************************************************
 #  *                          Homework III                              *
 #  *                                                                    *
 #  *  Problem: Insertion Sort                                           *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of numbers,                       *
 #  *          return a sorted array using insertion sort.               *
 #  *                                                                    *
 #  *  Input:  An unsorted array                                         *
 #  *  Output: A sorted array                                            *
 #  *                                                                    *
 #  *  Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]               *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/

 #  /**********************************************************
 #   *                                                        *
 #   *  Problem: Selection Sort                               *
 #   *                                                        *
 #   *  Prompt: Given an unsorted array of numbers,           *
 #   *          return a sorted array using insertion sort.   *
 #   *                                                        *
 #   *  Input: An unsorted array                              *
 #   *  Output: A sorted array                                *
 #   *                                                        *
 #   *  Example: input = [8,3,2,10] output = [2,3,8,10]       *
 #   *                                                        *
 #   *  What are the time and auxilliary space complexity?    *
 #   *  What is the best case time complexity?                *
 #   *                                                        *
 #   **********************************************************/

 #  /**********************************************************
 #   *                                                        *
 #   *  Problem: Bubble Sort                                  *
 #   *                                                        *
 #   *  Prompt: Given an unsorted array of numbers,           *
 #   *          return a sorted array using bubble sort.      *
 #   *                                                        *
 #   *  Input: An unsorted array                              *
 #   *  Output: A sorted array                                *
 #   *                                                        *
 #   *  Example: input = [8,3,2,10] output = [2,3,8,10]       *
 #   *                                                        *
 #   *  What are the time and auxilliary space complexity?    *
 #   *                                                        *
 #   **********************************************************/


def insertionSort(input)
  input.each_with_index do |element, index|
    unless index == input.length - 1
      subarray_index = index_of_subarray_min(index + 1, input)

      if element > input[subarray_index]
        input = swap(index, subarray_index, input)
      end
    end
  end

  return input
end



def selectionSort(input)
  input.each_with_index do |element, index|
    input = insert_and_shuffle(element, index, input)
  end
end

def bubbleSort(input)
  # your work here
end

private

def swap(first_index, second_index, array)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
  return array
end

def index_of_subarray_min(start, array)
  index = start
  min = array[start]
  min_index = index

  array[start..array.length-1].each do |element|
    if element < min
      min = element
      min_index = index
    end
    index += 1
  end

  return min_index
end

def insert_and_shuffle(element, index, array)
  key = element
  # puts "Key: #{key}"
  # puts "Array to Shuffle: #{array}"
  while index >= 0
    # puts "Index: #{index}"
    if index == 0
      array[index] = key
    elsif key < array[index - 1]
      array[index] = array[index -1]
      # p array
    else
      array[index] = key
      break
    end

    index -= 1
  end
  # p array
  return array
end

# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class InsertionSortTest < Test::Unit::TestCase
  def test_insertionSort_should_handle_example_case
    test = insertionSort([3,9,1,4,7])
    answer = [1,3,4,7,9]

    assert_equal(answer, test);
  end

  def test_insertionSort_should_handle_empty_input
    test = insertionSort([])
    answer = []

    assert_equal(answer, test);
  end

  # def test_insertionSort_should_handle_large_input
  #   testInput = []
  #   $i = 1000000
  #
  #   while $i > 0
  #     toPush = Random.rand(1000000)
  #     testInput.push(toPush)
  #     $i = $i - 1
  #   end
  #
  #   test = insertionSort(testInput)
  #   assert_equal(testInput.sort, test)
  # end

end

class SelectionSortTest < Test::Unit::TestCase
  def test_selectionSort_should_handle_example_case
    test = selectionSort([8,3,2,10])
    answer = [2,3,8,10]

    assert_equal(answer, test);
  end

  def test_selectionSort_should_handle_empty_input
    test = selectionSort([])
    answer = []

    assert_equal(answer, test);
  end

  def test_selectionSort_should_handle_large_input
    testInput = []
    $i = 10000

    while $i > 0
      toPush = Random.rand(10000)
      testInput.push(toPush)
      $i = $i - 1
    end

    test = selectionSort(testInput)
    assert_equal(testInput.sort, test)
  end

end

# class BubbleSortTest < Test::Unit::TestCase
#   def test_bubbleSort_should_handle_example_case
#     test = bubbleSort([8,3,2,10])
#     answer = [2,3,8,10]
#
#     assert_equal(answer, test);
#   end
#
#   def test_bubbleSort_should_handle_empty_input
#     test = bubbleSort([])
#     answer = []
#
#     assert_equal(answer, test);
#   end
#
#   def test_bubbleSort_should_handle_large_input
#     testInput = []
#     $i = 1000000
#
#     while $i > 0
#       toPush = Random.rand(1000000)
#       testInput.push(toPush)
#       $i = $i - 1
#     end
#
#     test = bubbleSort(testInput)
#     assert_equal(testInput.sort, test)
#   end

# end
