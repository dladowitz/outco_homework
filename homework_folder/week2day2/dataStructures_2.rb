# /***********************************************************************************
#   *                                 Homework V                                     *
#   *                                                                                *
#   *  Problem: Binary Search Tree                                                   *
#   *                                                                                *
#   *  Prompt: Create a BinarySearchTree class/constructor.                          *
#   *          Name it binarySearchTree (js) or binary_search_tree (rb/py).          *
#   *                                                                                *
#   *          Part 1: Create a node class for your binarySearchTree.                *
#   *                  Your node class will take an integer value and output         *
#   *                  an object with the following properties:                      *
#   *                                                                                *
#   *                  node.value: input value                                       *
#   *                  node.leftChild: a pointer to the left child Node              *
#   *                  node.rightChild: a pointer to the right child Node            *
#   *                                                                                *
#   *                  Example: { value: 1, leftChild: null, rightChild: null }      *
#   *                                                                                *
#   *          Part 2: Create the BinarySearchTree class.                            *
#   *                  It should contain the following properties:                   *
#   *                                                                                *
#   *                  root: pointer to the root node                                *
#   *                  size: number of nodes in the BinarySearchTree                 *
#   *                                                                                *
#   *                  The BinarySearchTree will also have the following properties: *
#   *                                                                                *
#   *                  insert: method that takes takes an input value, and creates a *
#   *                          new node with the given input.  The method will then  *
#   *                          find the correct place to add the new node. (Remember *
#   *                          that nodes with values larger than the parent node go *
#   *                          to the right, and smaller values go to the left.)     *
#   *                                                                                *
#   *                  search: method that will search to see if a node with a       *
#   *                          specified value exists.  If present returns true,     *
#   *                          else returns false.                                   *
#   *                                                                                *
#   *  Input:  N/A                                                                   *
#   *  Output: A BinarySearchTree instance                                           *
#   *                                                                                *
#   *  What are the time and auxilliary space complexities of the various methods?   *
#   *                                                                                *
#   **********************************************************************************/


#  /**
#   *  Extra Credit: Remove
#   *
#   *  Prompt: Create a remove method on your BinarySearchTree that will remove and
#   *          return a given value from the tree and retie the tree so it remains
#   *          properly sorted.
#   **/



class Node
  attr_accessor :rightChild, :leftChild
  attr_reader :val, :root

  def initialize(value)
    @val = value
    @rightChild = nil
    @leftChild = nil
    @root = self
  end
end

class Binary_Search_Tree
  attr_reader :root
  def initialize
    @root = nil
  end

  def insert(val)
    unless @root
      @root = Node.new(5)
      return
    end

    if val < @root.val
      @root.leftChild = Node.new(val)
    else
      @root.rightChild = Node.new(val)
    end
  end

  def contains
  end

  def delete(val)
    queue = Queue.new
    queue.enq(@root)

    while queue.size > 0
      current_node = queue.deq
      if current_node.leftChild && current_node.leftChild.val == val
        current_node.leftChild = nil
      elsif current_node.rightChild && current_node.rightChild.val == val
        current_node.rightChild = nil
      end
      queue.enq(current_node.leftChild) if current_node.leftChild
      queue.enq(current_node.rightChild) if current_node.rightChild
    end

    return false
  end

  def search(val)
    queue = Queue.new
    queue.enq(@root)

    while queue.size > 0
      current_node = queue.deq
      if current_node.val == val
        return true
      end
      queue.enq(current_node.leftChild) if current_node.leftChild
      queue.enq(current_node.rightChild) if current_node.rightChild
    end

    return false
  end

  def size
    size = 0
    queue = Queue.new
    queue.enq(@root)

    while queue.size > 0
      current_node = queue.deq
      size += 1
      queue.enq(current_node.leftChild) if current_node.leftChild
      queue.enq(current_node.rightChild) if current_node.rightChild
    end

    return size
  end
end


# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class BinarySearchTreeNodeTest < Test::Unit::TestCase
  def test_creation_of_node
    test = Node.new(5)

    assert_not_equal(nil, test)
  end
  def test_encoding_a_value
    test = Node.new(5)

    assert_equal(5, test.val)
    assert_equal(nil, test.rightChild)
    assert_equal(nil, test.leftChild)
  end
  def test_inserting_other_values
    test = Node.new(5)
    testRight = Node.new(10)
    testLeft = Node.new(2)
    test.rightChild = testRight
    test.leftChild = testLeft

    assert_equal(5, test.root.val)
    assert_equal(2, test.root.leftChild.val)
    assert_equal(10, test.root.rightChild.val)

  end
end

class BinarySearchTreeClassTest < Test::Unit::TestCase
  def test_Binary_Search_Tree_properties_existence
    test = Binary_Search_Tree.new()

    assert_respond_to(test, :root)
    assert_respond_to(test, :size)

  end

  def test_Binary_Search_Tree_methods_existence
    test = Binary_Search_Tree.new()

    assert_respond_to(test, :insert)
    assert_respond_to(test, :contains)
    assert_respond_to(test, :delete)
  end

  def test_Binary_Search_Tree_insert_method_single_node
    test = Binary_Search_Tree.new()
    test.insert(5)

    assert_equal(5, test.root.val)
  end

  def test_Binary_Search_Tree_insert_method_three_nodes
    test = Binary_Search_Tree.new()
    test.insert(5)
    test.insert(10)
    test.insert(2)

    assert_equal(5, test.root.val)
    assert_equal(10, test.root.rightChild.val)
    assert_equal(2, test.root.leftChild.val)
  end

  def test_Binary_Search_Tree_search_method_node_exists
    test = Binary_Search_Tree.new()
    test.insert(5)
    test.insert(10)
    test.insert(2)

    assert_equal(true, test.search(10))
  end

  def test_Binary_Search_Tree_search_method_node_does_not_exist
    test = Binary_Search_Tree.new()
    test.insert(5)
    test.insert(10)
    test.insert(2)

    assert_equal(false, test.search(7))
  end

  def test_Binary_Search_Tree_delete_method_removes_node
    test = Binary_Search_Tree.new()
    test.insert(5)
    test.insert(10)
    test.insert(2)

    assert_equal(true, test.search(10))

    test.delete(10)

    assert_equal(false, test.search(10))
  end

  def test_Binary_Search_Tree_delete_method_removes_node
    test = Binary_Search_Tree.new()
    test.insert(5)
    test.insert(10)
    test.insert(2)

    assert_equal(3, test.size)

    test.delete(10)

    assert_equal(2, test.size)
  end
end
