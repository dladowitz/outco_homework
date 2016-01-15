 /********************************************************************** 
  *                          Homework VI                               *
  *                                                                    *
  *  Problem: Quicksort                                                *
  *                                                                    *
  *  Prompt: Given an unsorted array of numbers,                       *
  *          return a sorted array using Quicksort sort.               *
  *                                                                    *
  *  Input:  An unsorted array                                         *
  *  Output: A sorted array                                            *
  *                                                                    *
  *  Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]               *
  *                                                                    *
  *  What are the time and auxilliary space complexity?                *
  *                                                                    *
  **********************************************************************/







  /**********************************************************
   *             Highly Recommended Extra Credit            *
   *                                                        *
   *  Problem: Bubble Sort                                  *
   *                                                        *
   *  Prompt: Given an unsorted array of numbers,           *
   *          return a sorted array using bubble sort.      *
   *                                                        *
   *  Input: An unsorted array                              *
   *  Output: A sorted array                                *
   *                                                        *
   *  Example: input = [8,3,2,10] output = [2,3,8,10]       *
   *                                                        *
   *  What are the time and auxilliary space complexity?    *
   *                                                        *
   **********************************************************/


var quickSort = function(input){
  // your work here
}



var bubbleSort = function(input){
  // your work here
}






















////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('QUICK SORT ', function(){

  describe("RUN ON [3,9,1,4,7]: ", function(){
    it("should return [1,3,4,7,9]", function(){
      var test = quickSort([3,9,1,4,7]);
      var answer = [1,3,4,7,9];

      expect(test).to.eql(answer);
    });
  });

  describe("RUN ON EMPTY INPUT []: ", function(){
    it("should return []", function(){
      var test = quickSort([]);
      var answer = [];

      expect(test).to.eql(answer);
    });
  });

  describe("RUN ON LARGE INPUT: ", function(){
    it("should complete", function(){
      var testInput = [];
      var i = 1000000;
      while (i--){
        testInput.push(Math.floor(Math.random() * 1000000))
      }
      var test = quickSort(testInput);

      expect(testInput.sort(function(a, b){return a-b})).to.eql(test);
    })
  })

});


describe('BUBBLE SORT ', function(){

  describe("RUN ON [8, 3, 2, 10]: ", function(){
    it("should return [2, 3, 8, 10]", function(){
      var test = bubbleSort([8,3,2,10]);
      var answer = [2,3,8,10];

      expect(test).to.eql(answer);
    });
  });

  describe("RUN ON EMPTY INPUT []: ", function(){
    it("should return []", function(){
      var test = bubbleSort([]);
      var answer = [];

      expect(test).to.eql(answer);
    });
  });

  describe("RUN ON LARGE INPUT: ", function(){
    it("should complete", function(){
      var testInput = [];
      var i = 1000000;
      while (i--){
        testInput.push(Math.floor(Math.random() * 1000000))
      }
      var test = bubbleSort(testInput);

      expect(testInput.sort(function(a, b){return a-b})).to.eql(test);
    })
  })

});