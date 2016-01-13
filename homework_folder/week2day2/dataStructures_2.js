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
    this.right = null;
    this.left = null;
  }


  var binarySearchTree = function(){
    this.root = null;
    this.size = 0;
  }

  binarySearchTree.prototype.insert = function(value){
    if (this.root === null){
      // when the tree is empty
      this.root = new node(value);
      this.size++;
    } else {
      // when stuff has already been inserted
      var findAndInsert = function(currentNode){

        if (value > currentNode.value){
          if (currentNode.right === null){
            currentNode.right = new node(value);
          } else {
            findAndInsert(currentNode.right);
          }
        } else if (value < currentNode.value){
          if (currentNode.left === null){
            currentNode.left = new node(value);
          } else {
            findAndInsert(currentNode.left);
          }
        }
      }

      findAndInsert(this.root);

      this.size++;

    }
  }

  binarySearchTree.prototype.search = function(target){
    var check = false;

    var traverse = function(currentNode){
      if (check){
        return;
      } else if (currentNode === null){
        return;
      } else if (currentNode.value === target){
        check = true;
        return;
      }

      if (target > currentNode.value){
        traverse(currentNode.right);
      } else if (target < currentNode.value){
        traverse(currentNode.left);
      }
    }

    traverse(this.root);
    return check;
  }

  binarySearchTree.prototype.delete = function(deleteValue){
    var temp = [];

    var roundUp = function(currentNode){
      if (currentNode === null){
        return;
      } else {
        if (currentNode.value !== deleteValue){
          temp.push(currentNode.value);
        }
      }

      roundUp(currentNode.right);
      roundUp(currentNode.left);
    }

    roundUp(this.root);

    if (temp.length === this.size){
      console.log('deleteValue: ' + deleteValue + ' was not found in binary search tree');
      return;
    }

    // create temporary tree
    var tempTree = new binarySearchTree();

    // iterate through all of the found values that weren't the target
    // and insert them into the new tree
    temp.forEach(function(value){
      tempTree.insert(value);
    })

    // reinitialize the root as the tempTree root
    this.root = tempTree.root;

    // reduce size of tree
    this.size--;
    
    console.log(deleteValue + ' has been deleted from the tree');
  }

  // var test = new binarySearchTree();

  // test.insert(5);
  // test.insert(3);
  // test.insert(8);
  // test.insert(1);
  // test.insert(2);
  // test.insert(4);
  // test.insert(10);
  // console.log(test.root);
  // test.delete(3);
  // console.log('*********');
  // console.log(JSON.stringify(test.root));








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
      expect(initial).to.have.property('right');
      expect(initial).to.have.property('left');
      expect(initial.right).to.equal(null);
      expect(initial.left).to.equal(null);

      initial.right = rightTarget;
      initial.left = leftTarget;

      expect(initial.right.value).to.equal(10);
      expect(initial.left.value).to.equal(2);

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
      expect(test.root.right).to.equal(null);
      expect(test.root.left).to.equal(null);
      expect(test.size).to.equal(1);
    });

    it('should be able to insert a second node', function(){
      var test = new binarySearchTree();

      expect(test.root).to.equal(null);
      expect(test.size).to.equal(0);

      test.insert(5);

      expect(test.root.value).to.equal(5);
      expect(test.root.right).to.equal(null);
      expect(test.root.left).to.equal(null);
      expect(test.size).to.equal(1);

      test.insert(10);

      expect(test.root.value).to.equal(5);
      expect(test.root.right.value).to.equal(10);
      expect(test.root.left).to.equal(null);
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