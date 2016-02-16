 /********************************************************************** 
  *                           Homework XI                              *
  **********************************************************************/

 /********************************************************************** 
  *  Problem 1: Bucket Sort                                            *
  *                                                                    *
  *  Prompt: Given an unsorted array of numbers which are in the range *
  *          of 0.0 to 1.0, and are uniformly distributed across the   *
  *          range, sort the numbers efficiently.                      *
  *                                                                    *
  *  Input:  Unsorted array of numbers in range of 0.0 to 1.0          *
  *  Output: A sorted array                                            *
  *                                                                    *
  *  Example: input = [0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434]     *
  *           output = [0.1234, 0.3434, 0.565, 0.656, 0.665, 0.897]    *
  *                                                                    *
  *  What are the time and auxilliary space complexity?                *
  *                                                                    *
  **********************************************************************/

 /**********************************************************************
  *  Problem 2: Kth Smallest Element in a Range                        *
  *                                                                    *
  *  Prompt: Given an unsorted array of whole integers in the range    *
  *          1000 to 9000, find the Kth smallest element in linear time*
  *          The array can have duplicates.                            *
  *                                                                    *
  *  Input:  Unsorted array of whole integers in range of 1000 to 9000 *
  *          Kth smallest element you want to find                     *
  *                                                                    *
  *  Output: Kth smalest element in the range                          *
  *                                                                    *
  *  Example: array = [1984, 1337, 9000, 8304, 5150, 9000, 8304], k=5  *
  *           output = 8304                                            *
  *                                                                    *
  *  What are the time and auxilliary space complexity?                *
  *                                                                    *
  **********************************************************************/



var bucketSort = function(input){
  // your work here
}

var kthSmallest = function(input, k){
  // your work here
}














////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('bucketSort', function(){
  describe('run on example input:', function(){
    it('should return the example output', function(){
      var test = bucketSort([0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434]);
      var answer = [0.1234, 0.3434, 0.565, 0.656, 0.665, 0.897];

      expect(test).to.eql(answer);
    });
  });

  describe('run on empty array', function(){
    it('should return an empty array', function(){
      var test = bucketSort([]);
      var answer = [];

      expect(test).to.eql(answer);
    })
  })

  describe('run on large array', function(){
    it('should return a sorted array', function(){
      var testInput = [];
      var i = 10000;
      while (i--){
        testInput.push(Math.floor(Math.random() * 1000))
      }

      var test = bucketSort(testInput);
      var answer = testInput.sort(function(a,b){return a-b});

      expect(test).to.eql(answer);
    })
  })
});


describe('kthSmallest', function(){
  describe('run on example input', function(){
    it('should return the example output', function(){
      var test = kthSmallest([1984, 1337, 9000, 8304, 5150, 9000, 8304], 5);
      var answer = 8304;

      expect(test).to.eql(answer);
    });
  });

  describe('run on [7, 10, 4, 3, 20, 15] and k=3', function(){
    it('should return 7', function(){
      var test = kthSmallest([7, 10, 4, 3, 20, 15], 3);
      var answer = 7;

      expect(test).to.eql(answer);
    });
  });

  describe('run on [7, 10, 4, 3, 20, 15] and k=4', function(){
    it('should return 10', function(){
      var test = kthSmallest([7, 10, 4, 3, 20, 15], 4);
      var answer = 10;

      expect(test).to.eql(answer);
    });
  });
})




