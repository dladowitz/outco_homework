 # /********************************************************************** 
 #  *                           Homework XI                              *
 #  **********************************************************************/

 # /********************************************************************** 
 #  *  Problem 1: Bucket Sort                                            *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of numbers which are in the range *
 #  *          of 0.0 to 1.0, and are uniformly distributed across the   *
 #  *          range, sort the numbers efficiently.                      *
 #  *                                                                    *
 #  *  Input:  Unsorted array of numbers in range of 0.0 to 1.0          *
 #  *  Output: A sorted array                                            *
 #  *                                                                    *
 #  *  Example: input = [0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434]     *
 #  *           output = [0.1234, 0.3434, 0.565, 0.656, 0.665, 0.897]         *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/

 # /**********************************************************************
 #  *  Problem 2: Kth Smallest Element in a Range                        *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of whole integers in the range    *
 #  *          1000 to 9000, find the Kth smallest element in linear time*
 #  *          The array can have duplicates.                            *
 #  *                                                                    *
 #  *  Input:  Unsorted array of whole integers in range of 1000 to 9000 *
 #  *          Kth smallest element you want to find                     *
 #  *                                                                    *
 #  *  Output: Kth smalest element in the range                          *
 #  *                                                                    *
 #  *  Example: array = [1984, 1337, 9000, 8304, 5150, 9000, 8304], k=5  *
 #  *           output = 8304                                            *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/


def bucketSort(input)
	# your work here
end

def kthSmallest(input)
	# your work here  
end





# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class BucketSortTest < Test::Unit::TestCase

  def test_bucketSort_should_handle_example_case
    test = bucketSort([0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434])
    answer = [0.1234, 0.3434, 0.565, 0.656, 0.665, 0.897]

    assert_equal(answer, test)
  end

  def test_bucketSort_should_handle_empty_case
    test = bucketSort([])
    answer = []

    assert_equal(answer, test)
  end

  def test_bucketSort_should_handle_large_array

    testInput = []
    $i = 10000

    while $i > 0
      toPush = Random.rand(1000)
      testInput.push(toPush)
      $i = $i - 1
    end


    test = bucketSort(testInput)
    answer = testInput.sort

    assert_equal(answer, test)
  end

end

class KthSmallestTest < Test::Unit::TestCase

  def test_kthSmallest_should_handle_example_case
    test = kthSmallest([1984, 1337, 9000, 8304, 5150, 9000, 8304], 5)
    answer = 8304

    assert_equal(answer, test)
  end

  def test_kthSmallest_should_handle_other_input
    test = kthSmallest([7, 10, 4, 3, 20, 15], 3)
    answer = 7

    assert_equal(answer, test)
  end

  def test_kthSmallest_should_handle_other_input_with_new_k
    test = kthSmallest([7, 10, 4, 3, 20, 15], 4)
    answer = 10

    assert_equal(answer, test)
  end

end







