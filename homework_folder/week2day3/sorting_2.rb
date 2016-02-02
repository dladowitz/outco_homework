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


def quickSort(input)
  # your work here
end


def mergeSort(input)
  # your work here
end














# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class QuickSortTest < Test::Unit::TestCase
  def test_quickSort_should_handle_example_case
    test = quickSort([3,9,1,4,7])
    answer = [1,3,4,7,9]

    assert_equal(answer, test);
  end

  def test_quickSort_should_handle_empty_input
    test = quickSort([])
    answer = []

    assert_equal(answer, test);
  end

  def test_quickSort_should_handle_large_input
    testInput = []
    $i = 1000000

    while $i > 0
      toPush = Random.rand(1000000)
      testInput.push(toPush)
      $i = $i - 1
    end
    
    test = quickSort(testInput)
    assert_equal(testInput.sort, test)
  end

end

class MergeSortTest < Test::Unit::TestCase
  def test_mergeSort_should_handle_example_case
    test = mergeSort([8,3,2,10])
    answer = [2,3,8,10]

    assert_equal(answer, test);
  end

  def test_mergeSort_should_handle_empty_input
    test = mergeSort([])
    answer = []

    assert_equal(answer, test);
  end

  def test_mergeSort_should_handle_large_input
    testInput = []
    $i = 1000000

    while $i > 0
      toPush = Random.rand(1000000)
      testInput.push(toPush)
      $i = $i - 1
    end
    
    test = mergeSort(testInput)
    assert_equal(testInput.sort, test)
  end

end
