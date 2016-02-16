 # /*************************************************************************
 #  *                          Homework IX                                  *
 #  *                                                                       *
 #  *  Problem: Lattice Paths                                               *
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
 #  *        Try implementing your solution using side effects recursion or *
 #  *        pure recursion.                                                *
 #  *                                                                       *
 #  *  Additional Resources:                                                *
 #  *    1: https://projecteuler.net/problem=15                             *
 #  *    2: https://en.wikipedia.org/wiki/Lattice_path                      *
 #  *                                                                       *
 #  *************************************************************************/


def latticePaths(n)
  
end










# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

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







