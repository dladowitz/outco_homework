 /********************************************************************************** 
  *                                 Homework IV                                    *
  *                                                                                *
  *  Problem: Linked List                                                          *
  *                                                                                *
  *  Prompt: Create a Linked List class/constructor.                               *
  *          Name it LinkedList (js) or Linked_List(rb/py).                        *
  *                                                                                *
  *          Part 1: Create a node class for your LinkedList.                      *
  *                  Your node class will take an integer value and output         *
  *                  and output and object with the following properties:          *
  *                                                                                *
  *                  node.value: input value                                       *
  *                  node.next: a pointer to the next value (initiall null)        * 
  *                                                                                *
  *                  Example: { value: 1, next: null }                             *
  *                                                                                *
  *          Part 2: Create the LinkedList class.                                  *
  *                  It should contain the following properties:                   *
  *                                                                                *
  *                  head: pointer to the head node                                *
  *                  tail: pointer to the tail node                                *
  *                  length: number of nodes in the linked list                    *
  *                                                                                *
  *                  The LinkedList should also contain the following properties   *
  *                                                                                *
  *                  append: function that adds a node to the tail                 *
  *                                                                                *
  *                  insert: function that takes in two values, one to be inserted *
  *                          and one to search.  It searches the list for the      *
  *                          search value, and if found, adds a new node with the  *
  *                          insert value after the node with the search value.   *
  *                                                                                *
  *                  delete: function that removes a node at a specified location, *
  *                          with a default action of deleting the head            *
  *                                                                                *
  *                  contains: function that checks to see if a value is contained *
  *                            in the list                                         *
  *                                                                                *
  *  Input:  N/A                                                                   *
  *  Output: A LinkedList instance                                                 *
  *                                                                                *
  *  What are the time and auxilliary space complexities of the various methods?   *
  *                                                                                *
  **********************************************************************************/

// listNode
var listNode = function(value){

}

// linkedList
var linkedList = function(){

}



















////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('linked list node', function(){

  describe('creation of a node', function(){
    it('should exist: ', function(){
      var test = new listNode();

      expect(test).to.not.equal(undefined);
    });
  });

  describe('encoding a value', function(){
    it('should store a value: ', function(){
      var test = new listNode();

      expect(test).to.have.property('value');
      expect(test.value).to.equal(undefined);

      test.value = 3;

      expect(test.value).to.equal(3);
    });
  });

  describe('pointing to another node', function(){
    it('should be able to point to another node: ', function(){
      var initial = new listNode(5);
      var target = new listNode(10);

      expect(initial).to.have.property('value');
      expect(initial).to.have.property('next');
      expect(initial.next).to.equal(null);

      initial.next = target;

      expect(initial.next.value).to.equal(10);

    })
  })
})

describe('linkedList class ', function(){

  describe('linkedList properties', function(){
    it('should have properties head, tail, and listLength', function(){
      var test = new linkedList();

      expect(test).to.have.property('head');
      expect(test).to.have.property('tail');
      expect(test).to.have.property('listLength');
      expect(test.head).to.equal(null);
      expect(test.tail).to.equal(null);
      expect(test.listLength).to.equal(0);
    });
  });

  describe('linkedList methods existence', function(){
    it('should have methods append, insert, delete, contains', function(){
      var test = new linkedList();

      expect(test).to.respondTo('append');
      expect(test).to.respondTo('insert');
      expect(test).to.respondTo('delete');
      expect(test).to.respondTo('contains');
    });
  });

  describe('linkedList append method', function(){
    it('should be able to append a single node', function(){
      var test = new linkedList();

      expect(test.head).to.equal(null);
      expect(test.tail).to.equal(null);
      expect(test.listLength).to.equal(0);

      test.append(5);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(5);
      expect(test.listLength).to.equal(1);
    });

    it('should be able to append a second node', function(){
      var test = new linkedList();

      expect(test.head).to.equal(null);
      expect(test.tail).to.equal(null);
      expect(test.listLength).to.equal(0);

      test.append(5);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(5);
      expect(test.listLength).to.equal(1);

      test.append(10);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(10);
      expect(test.listLength).to.equal(2);
    });
  });

  describe('linkedList insert method', function(){
    it('should be able to insert a node between two nodes', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.insert(13, 5);

      expect(test.head.value).to.equal(5);
      expect(test.head.next.value).to.equal(13);
      expect(test.head.next.next.value).to.equal(10);
      expect(test.tail.value).to.equal(10);
    })

    it('should modify the linkedList tail if the search value is the tail value', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.insert(17, 10);

      expect(test.head.value).to.equal(5);
      expect(test.head.next.value).to.equal(10);
      expect(test.head.next.next.value).to.equal(17);
      expect(test.tail.value).to.equal(17);
    })

    it('should not insert the value if the search value is not found', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.insert(12, 4);

      expect(test.head.value).to.equal(5);
      expect(test.head.next.value).to.equal(10);
      expect(test.tail.value).to.equal(10);
      expect(test.listLength).to.equal(2);
    })
  })

  describe('linkedList delete method', function(){
    it('should delete a node in the middle of the linked list', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.append(15);
      test.delete(1);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(15);
      expect(test.head.next.value).to.equal(15);
      expect(test.listLength).to.equal(2);
    });

    it('should handle deleting the head value of the linked list', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.append(15);
      test.delete(0);

      expect(test.head.value).to.equal(10);
      expect(test.tail.value).to.equal(15);
      expect(test.head.next.value).to.equal(15);
      expect(test.listLength).to.equal(2);
    });
    
    it('should handle deleting the tail value of the linked list', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.append(15);
      test.delete(2);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(10);
      expect(test.head.next.value).to.equal(10);
      expect(test.listLength).to.equal(2);
    });
    
    it('should not modify the linked list when attempting to delete a nonexistant node', function(){
      var test = new linkedList();
      test.append(5);
      test.append(10);
      test.append(15);
      test.delete(3);

      expect(test.head.value).to.equal(5);
      expect(test.tail.value).to.equal(15);
      expect(test.head.next.value).to.equal(10);
      expect(test.listLength).to.equal(3);
    });
  });

  describe('linkedList contains method', function(){
    it('should return true when the target value exists in the linked list', function(){
      var test = new linkedList();
      test.append(5);
      test.append(109);

      expect(test.contains(5)).to.equal(true);
    })

    it('should return false when the target value does not exist in the linked list', function(){
      var test = new linkedList();
      test.append(5);
      test.append(109);

      expect(test.contains(13)).to.equal(false);
    })
  })

})