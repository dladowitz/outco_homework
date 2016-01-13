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
  # initialize the value of the node and storage 
  def initialize(val)
    @val = val
    @children = []
  end
  # this allows us to retrieve the values as needed
  attr_reader :val
  attr_reader :children
  
  # this method just adds a node to the 0 or 1 index for left or right child respectively
  def add_child(node, index)
    @children[index] = node if index == 0 || index == 1
  end

  # this method checks if either of the children has the input value and makes it nil/null
  def remove_child(val)
    for i in 0..1
      @children[i] = nil if @children[i].val == val
    end
  end

  # optional method just to print children values for testing purposes
  def children_values
    @children.map do |child| 
      child.val if child != nil
    end
  end
end

# # some tests to ensure node is working fine
# node_5 = Node.new(5)
# node_10 = Node.new(10)
# node_1 = Node.new(1)
# node_5.add_child(node_10, 1)
# node_5.add_child(node_1, 0)
# print node_5.children_values
# puts
# node_5.remove_child(1)
# print node_5.children_values

class Binary_Search_Tree
  # initialize the root node
  def initialize(val)
    @root = Node.new(val)
  end
  attr_reader :root

  # insert takes in a value and adds a new node containing that value if it 
    # doesn't already exist
  def insert(val)
    # if root does not have a value, add value to root
    if @root == nil
      @root.val = val
      return
    end

    # use search to figure out if value exists in tree
    exist, current_node, parent_node = search(val, @root)
    # if it does not exist, insert a new node with that value into the right side
    if !exist
      i = val < parent_node.val ? 0 : 1
      parent_node.add_child(Node.new(val), i)
    else
      # if value already exist, return error
      return "Error: value already exists."
    end
  end

  #removes a node and patches up the tree to keep it in the correct order
  def remove(val)
    # perform a search to find out if it exists
    exist, current_node, parent_node = search(val, @root)
    if exist
      # get a filtered children array removing any nil values
      children = children_nodes(current_node)
      # if the node to be removed is the root, then we set default a first child node to the root
      if !parent_node
        @root = children[0]
      # otherwise we set a first child node as the parent node's child, thereby removing reference
        # to current node
      else
        i = current_node.val < parent_node.val ? 0 : 1
        parent_node.children[i] = children[0]
      end
      # if there was a second child, then we run a search again and add that
      # to the new branch on the tree
      if children[1]
        exist, current_node, parent_node = search(children[1].val, @root)
        i = children[1].val < parent_node.val ? 0 : 1
        parent_node.children[i] = children[1]
      end
    else
      return "Error: value was not found."
    end
  end

  # helper method to filter nil values from the children array
  def children_nodes(node)
    return node.children.select { |child| child }
  end
  # using recursion with side effects here to do the search
    # Ruby allows a method to return more than one value, in our case 
    # the first value will be true or false indicating if the input val has been found
    # the second value is the actual node if found, or nil if not found
    # the third value is the parent node
  def search(val, current_node = @root, parent_node = nil)
    # if the current node's value matches the search value, then return
      #this is one of the base cases
    if(current_node.val == val)
      return true, current_node, parent_node
    # check the left side if value if less than current node
    elsif(val < current_node.val)
      # if no child on the left, return false
      return false, nil, current_node if !current_node.children[0]
      # otherwise recurse further
      return search(val, current_node.children[0], current_node)
    else
      #if no child on the right, return false
      return false, nil, current_node if !current_node.children[1]
      # otherwise recurse further
      return search(val, current_node.children[1], current_node)
    end
  end
end

# test the new tree
# tree = Binary_Search_Tree.new(5)

# test insert method
# tree.insert(3)
# tree.insert(10)
# tree.insert(7)

# test search method 
# tree.search(8) #false, node 7
# tree.search(7) #true, node 7


# test for remove method, removing root, and when removed node has 0, 1, and 2 children
# tree.insert(12)
# tree.insert(14)
# tree.remove(5)
# tree.remove(10)
# tree.remove(12)
# tree.remove(14)




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

    assert_equal(5, test.value)
    assert_equal(nil, test.right)
    assert_equal(nil, test.left)
  end
  def test_inserting_other_values
    test = Node.new(5)
    testRight = Node.new(10)
    testLeft = Node.new(2)
    test.right = testRight
    test.left = testLeft

    assert_equal(5, test.root.value)
    assert_equal(2, test.root.left.value)
    assert_equal(10, test.root.right.value)

  end
end

class BinarySearchTreeClassTest < Test::Unit::TestCase
  def test_linked_list_properties_existence
    test = Linked_List.new()

    assert_respond_to(test, :root)
    assert_respond_to(test, :size)

  end

  def test_linked_list_methods_existence
    test = Linked_List.new()

    assert_respond_to(test, :insert)
    assert_respond_to(test, :contains)
    assert_respond_to(test, :delete)
  end
end