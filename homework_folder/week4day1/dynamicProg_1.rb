 # /********************************************************************** 
 #  *                           Homework X                               *
 #  **********************************************************************/

 # /********************************************************************** 
 #  *  Problem 1: Max Consecutive Sum                                    *
 #  *                                                                    *
 #  *  Prompt: Given an array of integers find the sum of consecutive    *
 #  *          values in the array that produces the maximum value.      *
 #  *                                                                    *
 #  *  Input:  Unsorted array of positive and negative integers          *
 #  *  Output: Integer (max consecutive sum)                             *
 #  *                                                                    *
 #  *  Time Complexity: O(n)                                             *
 #  *  Auxiliary Space Complexity: O(1)                                  *
 #  *                                                                    *
 #  *  Example: input = [6, -1, 3, 5, -10]                               *
 #  *           output = 13 (6 + -1 + 3 + 5 = 13)                        *
 #  *                                                                    *
 #  **********************************************************************/

 # /*************************************************************************
 #  *                                                                       *
 #  *  Problem: Lattice Paths (Dynamic Programming Approach)                *
 #  *                                                                       *
 #  *  Prompt: Count the number of unique paths to travel from the top left *
 #  *          to the bottom right of a lattice of squares.                 *
 #  *                                                                       *
 #  *  Input:  An interger N (which is the size of the lattice)             *
 #  *  Output: An interger (which represents the number of unique paths)    *
 #  *                                                                       *
 #  *  Example: N = 2 (2x2 board) => 6 (number of unique paths)             *
 #  *                                                                       *
 #  *  What is the time and auxilliary space complexity of your solution?   *
 #  *                                                                       *
 #  *  Note: When moving through the lattice, you can only move either down *
 #  *        or to the left.                                                *
 #  *                                                                       *
 #  *        You did this problem before with recursion. Try implementing   *
 #  *        it now with dynamic programming!                               *
 #  *                                                                       *
 #  *  Additional Resources:                                                *
 #  *    1: https://projecteuler.net/problem=15                             *
 #  *    2: https://en.wikipedia.org/wiki/Lattice_path                      *
 #  *                                                                       *
 #  *************************************************************************/

def maxConsecutiveSum(input)

end

def latticePaths(n)
  
end












# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class MaxConsecutiveSumTest < Test::Unit::TestCase
  def test_maxConsecutiveSum_should_handle_example_input
    test = maxConsecutiveSum([6, -1, 3, 5, -10])
    answer = 13

    assert_equal(answer, test) 

  end

  def test_maxConsecutiveSum_should_handle_single_element_input
    test = maxConsecutiveSum([5])
    answer = 5

    assert_equal(answer, test)
  end

  def test_maxConsecutiveSum_should_handle_larger_input
    test = maxConsecutiveSum([−2, 1, −3, 4, −1, 2, 1, −5, 4])
    answer = 6

    assert_equal(answer, test)
  end
end


class LatticePathsTest < Test::Unit::TestCase

  def test_small_lattice_2
    puts ': input 2 should expect 6'
    test = latticePaths(2)
    answer = 6

    assert_equal(answer, test)
  end

  def test_small_lattice_1
    puts ': input 1 should expect 2'
    test = latticePaths(1)
    answer = 2

    assert_equal(answer, test)
  end

  def test_small_lattice_3
    puts ': input 3 should expect 20'
    test = latticePaths(3)
    answer = 20

    assert_equal(answer, test)
  end

  def test_large_lattice_20
    puts ': input 20 should expect 137846528820'
    test = latticePaths(20)
    answer = 137846528820

    assert_equal(answer, test)
  end

  def test_edge_case_lattice_0
    puts ': input 0 should expect 1'
    test = latticePaths(0)
    answer = 1

    assert_equal(answer, test)
  end  

end

