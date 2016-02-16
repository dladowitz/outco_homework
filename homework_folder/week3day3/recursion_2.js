 /*************************************************************************
  *                          Homework IX                                  *
  *                                                                       *
  *  Problem: Lattice Paths                                               *
  *                                                                       *
  *  Prompt: Count the number of unique paths to travel from the top left *
  *          to the bottom right of a lattice of squares.                 *
  *                                                                       *
  *  Input:  An interger N (which is the size of the lattice)             *
  *  Output: An interger (which represents the number of unique paths)    *
  *                                                                       *
  *  Example: N = 2 (2x2 board) => 6 (number of unique paths)             *
  *                                                                       *
  *  What is the time and auxilliary space complexity of your solution?   *
  *                                                                       *
  *  Note: When moving through the lattice, you can only move either down *
  *        or to the left.                                                *
  *                                                                       *
  *        Try implementing your solution using side effects recursion or *
  *        pure recursion.                                                *
  *                                                                       *
  *  Additional Resources:                                                *
  *    1: https://projecteuler.net/problem=15                             *
  *    2: https://en.wikipedia.org/wiki/Lattice_path                      *
  *                                                                       *
  *************************************************************************/


var latticePaths = function(n){
  // your work here
}













////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('latticePaths function', function(){

  describe('RUN ON n=2', function(){
    it('should return 6', function(){
      var test = latticePaths(2);
      var answer = 6;
      expect(test).to.equal(answer);
    });
  });

  describe('RUN ON n=1', function(){
    it('should return 2', function(){
      var test = latticePaths(1);
      var answer = 2;
      expect(test).to.equal(answer);
    });
  });

  describe('RUN ON n=3', function(){
    it('should return 20', function(){
      var test = latticePaths(3);
      var answer = 20;
      expect(test).to.equal(answer);
    });
  });

  describe('LARGE CASE: RUN ON n=20', function(){
    it('should return 137846528820', function(){
      var test = latticePaths(20);
      var answer = 137846528820;
      expect(test).to.equal(answer);
    });
  });

  describe('EDGE CASE: RUN ON n=0', function(){
    it('should return 1', function(){
      var test = latticePaths(0);
      var answer = 1;
      expect(test).to.equal(answer);
    });
  });

});



