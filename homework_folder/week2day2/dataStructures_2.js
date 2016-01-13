/*********************************************************************************** 
  *                                 Homework V                                     *
  *                                                                                *
  *  Problem: Binary Search Tree                                                   *
  *                                                                                *
  *  Prompt: Create a BinarySearchTree class/constructor.                          *
  *          Name it binarySearchTree (js) or binary_search_tree (rb/py).          *
  *                                                                                *
  *          Part 1: Create a node class for your binarySearchTree.                *
  *                  Your node class will take an integer value and output         *
  *                  an object with the following properties:                      *
  *                                                                                *
  *                  node.value: input value                                       *
  *                  node.leftChild: a pointer to the left child Node              * 
  *                  node.rightChild: a pointer to the right child Node            *
  *                                                                                *
  *                  Example: { value: 1, leftChild: null, rightChild: null }      *
  *                                                                                *
  *          Part 2: Create the BinarySearchTree class.                            *
  *                  It should contain the following properties:                   *
  *                                                                                *
  *                  root: pointer to the root node                                *
  *                  size: number of nodes in the BinarySearchTree                 *
  *                                                                                *
  *                  The BinarySearchTree will also have the following properties: *
  *                                                                                *
  *                  insert: method that takes takes an input value, and creates a *
  *                          new node with the given input.  The method will then  *
  *                          find the correct place to add the new node. (Remember *
  *                          that nodes with values larger than the parent node go *
  *                          to the right, and smaller values go to the left.)     *
  *                                                                                *
  *                  search: method that will search to see if a node with a       *
  *                          specified value exists.  If present returns true,     *
  *                          else returns false.                                   *
  *                                                                                *
  *  Input:  N/A                                                                   *
  *  Output: A BinarySearchTree instance                                           *
  *                                                                                *
  *  What are the time and auxilliary space complexities of the various methods?   *
  *                                                                                *
  **********************************************************************************/


 /**
  *  Extra Credit: Remove
  *
  *  Prompt: Create a remove method on your BinarySearchTree that will remove and
  *          return a given value from the tree and retie the tree so it remains
  *          properly sorted.
  **/


var node = function(value){
  this.value = value;
  this.rightChild = null;
  this.leftChild = null;
}


var binarySearchTree = function(){
  this.root = null;
  this.size = 0;
}








////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('binary search tree node', function(){

  describe('creation of a node', function(){
    it('should exist: ', function(){
      var test = new node();

      expect(test).to.not.equal(undefined);
    });
  });

  describe('encoding a value', function(){
    it('should store a value: ', function(){
      var test = new node();

      expect(test).to.have.property('value');
      expect(test.value).to.equal(undefined);

      test.value = 3;

      expect(test.value).to.equal(3);
    });
  });

  describe('pointing to another node', function(){
    it('should be able to point to another node: ', function(){
      var initial = new node(5);
      var rightTarget = new node(10);
      var leftTarget = new node(2);

      expect(initial).to.have.property('value');
      expect(initial).to.have.property('rightChild');
      expect(initial).to.have.property('leftChild');
      expect(initial.rightChild).to.equal(null);
      expect(initial.leftChild).to.equal(null);

      initial.rightChild = rightTarget;
      initial.leftChild = leftTarget;

      expect(initial.rightChild.value).to.equal(10);
      expect(initial.leftChild.value).to.equal(2);

    })
  })
})

describe('binary search tree class ', function(){

  describe('binarySearchTree properties', function(){
    it('should have properties root and size', function(){
      var test = new binarySearchTree();

      expect(test).to.have.property('root');
      expect(test).to.have.property('size');
      expect(test.root).to.equal(null);
      expect(test.size).to.equal(0);
    });
  });

  describe('binarySearchTree methods existence', function(){
    it('should have methods insert, search, and delete', function(){
      var test = new binarySearchTree();

      expect(test).to.respondTo('insert');
      expect(test).to.respondTo('search');
      expect(test).to.respondTo('delete');
    });
  });

  describe('binarySearchTree insert method', function(){
    it('should be able to insert a single node', function(){
      var test = new binarySearchTree();

      expect(test.root).to.equal(null);
      expect(test.size).to.equal(0);

      test.insert(5);

      expect(test.root.value).to.equal(5);
      expect(test.root.rightChild).to.equal(null);
      expect(test.root.leftChild).to.equal(null);
      expect(test.size).to.equal(1);
    });

    it('should be able to insert a second node', function(){
      var test = new binarySearchTree();

      expect(test.root).to.equal(null);
      expect(test.size).to.equal(0);

      test.insert(5);

      expect(test.root.value).to.equal(5);
      expect(test.root.rightChild).to.equal(null);
      expect(test.root.leftChild).to.equal(null);
      expect(test.size).to.equal(1);

      test.insert(10);

      expect(test.root.value).to.equal(5);
      expect(test.root.rightChild.value).to.equal(10);
      expect(test.root.leftChild).to.equal(null);
      expect(test.size).to.equal(2);
    });
  });

  describe('binarySearchTree search method', function(){
    it('should return true when the node exists', function(){
      var test = new binarySearchTree();
      test.insert(5);
      test.insert(10);

      expect(test.search(5)).to.equal(true);
    })

    it('should return false when the node does not exist', function(){
      var test = new binarySearchTree();
      test.insert(5);
      test.insert(10);

      expect(test.search(17)).to.equal(false);
    })
  })

  describe('binarySearchTree delete method', function(){
    it('should delete a node', function(){
      var test = new binarySearchTree();
      test.insert(5);
      test.insert(10);
      test.insert(2);
      test.insert(7);
      test.insert(1);

      expect(test.search(7)).to.equal(true);
      
      test.delete(7);
      
      expect(test.search(7)).to.equal(false);

    });

    it('should modify the size when deleting a node', function(){
      var test = new binarySearchTree();
      test.insert(5);
      test.insert(10);
      test.insert(2);
      test.insert(7);
      test.insert(1);

      expect(test.size).to.equal(5);
      
      test.delete(7);
      
      expect(test.size).to.equal(4);
    });

  });

})