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
 #   *             Highly Recommended Extra Credit            *
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


def insertionSort(input)
  return input
end


def selectionSort(input)
  return input
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

  def test_insertionSort_should_handle_large_input
    testInput = []
    $i = 1000000

    while $i > 0
      toPush = Random.rand(1000000)
      testInput.push(toPush)
      $i = $i - 1
    end
    
    test = insertionSort(testInput)
    assert_equal(testInput.sort, test)
  end

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
    $i = 1000000

    while $i > 0
      toPush = Random.rand(1000000)
      testInput.push(toPush)
      $i = $i - 1
    end
    
    test = selectionSort(testInput)
    assert_equal(testInput.sort, test)
  end

end
