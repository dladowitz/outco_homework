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
 #  *                          insert value before the node with the search value.   *
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
    @val = val
    @next = nil
  end
​
  attr_accessor :val
  attr_accessor :next
end
​
class Linked_List
  def initialize()
    @head = nil
    @tail = nil
    @length = 0
  end
​
  attr_reader :head
  attr_reader :tail
  attr_reader :length
​
  def append(val)
    insert(val, @tail)
  end
​
  def insert(val, prev_node)
    new_node = Node.new(val)
    if !prev_node
      if !@head
        @tail = new_node
      else
        new_node.next = @head.next
      end
      @head = new_node
    else
      new_node.next = prev_node.next
      prev_node.next = new_node
      if @tail == prev_node
        @tail = new_node
      end
    end
    @length += 1
    return
  end
​
  def delete(val)
    prev_node, current_node = search(val)
    return "Value to delete not found" if prev_node == false
    if @tail == current_node
      @tail = prev_node
    end
    if prev_node == nil
      @head = current_node.next
    else
      prev_node.next = current_node.next
    end
    @length -= 1
  end
​
  def contains(val)
    return !!search(val)
  end
​
  def search(val)
    prev_node = nil
    current_node = @head
    while current_node
      if current_node.val == val
        return [prev_node, current_node]
      end
      prev_node = current_node
      current_node = current_node.next
    end
    return false
  end
end
​
# # Test cases
# list = Linked_List.new()
# puts list.length # 0
​
# list.append(10)
# puts list.length # 1
​
# puts list.contains(10) # true
# puts list.contains(5) # false
​
# list.append(5)
# print list.search(5) # [node 10, node 5]
# puts
# puts list.search(8) # false
# print list.search(10) # [nil, node 10]
# puts
# list.append(15)
# list.delete(15) 
# puts list.contains(15) # false
# print list.tail # Node 5
# puts
# list.delete(10)
# puts list.head  # Node 5
# list.delete(5)
# puts list.head # nil
# puts list.tail # nil
# puts list.length # 0