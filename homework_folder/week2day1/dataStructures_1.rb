 # /**********************************************************************************
 #  *                                 Homework IV                                    *
 #  *                                                                                *
 #  *  Problem: Linked List                                                          *
 #  *                                                                                *
 #  *  Prompt: Create a Linked List class/constructor.                               *
 #  *          Name it LinkedList (js) or Linked_List(rb/py).                        *
 #  *                                                                                *
 #  *          Part 1: Create a node class for your LinkedList.                      *
 #  *                  Your node class will take an integer value and output         *
 #  *                  and output and object with the following properties:          *
 #  *                                                                                *
 #  *                  node.value: input value                                       *
 #  *                  node.next: a pointer to the next value (initiall null)        *
 #  *                                                                                *
 #  *                  Example: { value: 1, next: null }                             *
 #  *                                                                                *
 #  *          Part 2: Create the LinkedList class.                                  *
 #  *                  It should contain the following properties:                   *
 #  *                                                                                *
 #  *                  head: pointer to the head node                                *
 #  *                  tail: pointer to the tail node                                *
 #  *                  length: number of nodes in the linked list                    *
 #  *                                                                                *
 #  *                  The LinkedList should also contain the following properties   *
 #  *                                                                                *
 #  *                  append: function that adds a node to the tail                 *
 #  *                                                                                *
 #  *                  insert: function that takes in two values, one to be inserted *
 #  *                          and one to search.  It searches the list for the      *
 #  *                          search value, and if found, adds a new node with the  *
 #  *                          insert value after the node with the search value.    *
 #  *                                                                                *
 #  *                  delete: function that removes a node at a specified location, *
 #  *                          with a default action of deleting the head            *
 #  *                                                                                *
 #  *                  contains: function that checks to see if a value is contained *
 #  *                            in the list                                         *
 #  *                                                                                *
 #  *  Input:  N/A                                                                   *
 #  *  Output: A LinkedList instance                                                 *
 #  *                                                                                *
 #  *  What are the time and auxilliary space complexities of the various methods?   *
 #  *                                                                                *
 #  **********************************************************************************/


class Node
  def initialize(val)
    @value = val
    @next = nil
  end

  attr_accessor :value
  attr_accessor :next
end

class Linked_List
  def initialize()
    @head = nil
    @tail = nil
    @listLength = 0
  end

  attr_reader :head
  attr_reader :tail
  attr_reader :listLength

  def print_reverse(node = nil)
    if !node
      node = @head
    end

    if node == @tail
      print "#{node.value}, "
      return
    else
      print_reverse(node.next)
      print "#{node.value}, "
    end
  end

  def print_forward
    current_node = @head
    while current_node
      print "#{current_node.value}, "
      current_node = current_node.next
    end
  end

  def append(val)
    @listLength += 1
    new_node = Node.new(val)
    if @tail
      @tail.next = new_node
    else
      @head = new_node
    end
    @tail = new_node
  end

  def insert(insertVal, searchVal)
    new_node = Node.new(insertVal)

    found = false
    current_node = @head

    while !found
      if current_node.value == searchVal
        found = true

        if current_node.next
          new_node.next = current_node.next
        else
          @tail = new_node
        end

        current_node.next = new_node
        @listLength += 1
      else
        if current_node == @tail
          return
        else
          current_node = current_node.next
        end
      end
    end
  end

  def delete(index)
    if index > @listLength
      return "Out of range. Current list length is: #{listLength}"
    end
    if index == 0
      if @head.next
        @head = @head.next
      else
        @head = nil
        @tail = nil
      end
      @listLength -= 1
      return
    elsif index == 1
      parent_node = @head
    else
      (index-1).times do
        parent_node = @head.next
        puts "Parent Node: #{parent_node}"
      end
    end

    deletion_node = parent_node.next
    if deletion_node == @tail
      parent_node.next = nil
      @tail = parent_node
    else
      parent_node.next = deletion_node.next
    end
    @listLength -= 1
  end

  def contains(val)
    current_node = @head

    while current_node
      if current_node.value == val
        return true
      end
      current_node = current_node.next
    end
    return false
  end

  def reverse
    previous = nil
    current = @head
    @tail = @head

    while current
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end

    @head = previous
  end

  def swap(a, b)
    first_node = nil
    second_node = nil

    current = @head
    while current
      if current.value == a
        first_node = current
      end
      if current.value == be
        second_node = current
      end
    end
  end

end


# list = Linked_List.new
# list.append 1
# list.append 2
# list.append 3
#
# list.reverse
# puts ""
# list.print_forward


# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////
#
# require 'test/unit'
#
# class LinkedListNodeTest < Test::Unit::TestCase
#   def test_creation_of_node
#     test = Node.new(3)
#
#     assert_not_equal(nil, test)
#   end
#   def test_encoding_a_value
#     test = Node.new(5)
#
#     assert_equal(5, test.value)
#     assert_equal(nil, test.next)
#   end
#   def test_pointing_to_another_node
#     initial = Node.new(5)
#     target = Node.new(10)
#     initial.next = target
#
#     assert_equal(5, initial.value)
#     assert_equal(10, initial.next.value)
#   end
# end
#
# class LinkedListClassTest < Test::Unit::TestCase
#   def test_linked_list_properties_existence
#     test = Linked_List.new()
#
#     assert_respond_to(test, :head)
#     assert_respond_to(test, :tail)
#     assert_respond_to(test, :listLength)
#
#   end
#
#   def test_linked_list_methods_existence
#     test = Linked_List.new()
#
#     assert_respond_to(test, :append)
#     assert_respond_to(test, :insert)
#     assert_respond_to(test, :delete)
#     assert_respond_to(test, :contains)
#   end
#
#   def test_linked_list_append_method_single_node
#     test = Linked_List.new()
#     test.append(5)
#
#     assert_equal(5, test.head.value)
#     assert_equal(5, test.tail.value)
#   end
#
#   def test_linked_list_append_method_two_node
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#
#     assert_equal(5, test.head.value)
#     assert_equal(10, test.tail.value)
#   end
#
#   def test_linked_list_insert_method_between_nodes
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.insert(13, 5)
#
#     assert_equal(5, test.head.value)
#     assert_equal(13, test.head.next.value)
#     assert_equal(10, test.head.next.next.value)
#     assert_equal(10, test.tail.value)
#   end
#
#   def test_linked_list_insert_method_modify_tail
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.insert(13, 10)
#
#     assert_equal(5, test.head.value)
#     assert_equal(10, test.head.next.value)
#     assert_equal(13, test.head.next.next.value)
#     assert_equal(13, test.tail.value)
#   end
#
#   def test_linked_list_insert_method_no_searchValue_match
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.insert(13, 17)
#
#     assert_equal(5, test.head.value)
#     assert_equal(10, test.head.next.value)
#     assert_equal(10, test.tail.value)
#     assert_equal(2, test.listLength)
#   end
#
#   def test_linked_list_delete_method_delete_middle
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#     test.delete(1)
#
#     assert_equal(5, test.head.value)
#     assert_equal(15, test.tail.value)
#     assert_equal(15, test.head.next.value)
#     assert_equal(2, test.listLength)
#   end
#
#   def test_linked_list_delete_method_delete_head
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#     test.delete(0)
#
#     assert_equal(10, test.head.value)
#     assert_equal(15, test.tail.value)
#     assert_equal(15, test.head.next.value)
#     assert_equal(2, test.listLength)
#   end
#
#   def test_linked_list_delete_method_delete_tail
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#     test.delete(2)
#
#     assert_equal(5, test.head.value)
#     assert_equal(10, test.tail.value)
#     assert_equal(10, test.head.next.value)
#     assert_equal(2, test.listLength)
#   end
#
#   def test_linked_list_delete_method_delete_out_of_range
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#     test.delete(5)
#
#     assert_equal(5, test.head.value)
#     assert_equal(15, test.tail.value)
#     assert_equal(10, test.head.next.value)
#     assert_equal(15, test.head.next.next.value)
#     assert_equal(3, test.listLength)
#   end
#
#   def test_linked_list_contains_method_when_true
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#
#     assert_equal(true, test.contains(10))
#   end
#
#   def test_linked_list_contains_method_when_false
#     test = Linked_List.new()
#     test.append(5)
#     test.append(10)
#     test.append(15)
#
#     assert_equal(false, test.contains(75))
#   end
# end
