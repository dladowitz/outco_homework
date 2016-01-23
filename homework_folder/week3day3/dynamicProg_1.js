 /********************************************************************** 
  *                           Homework X                               *
  **********************************************************************/

 /********************************************************************** 
  *  Problem 1: Max Consecutive Sum                                    *
  *                                                                    *
  *  Prompt: Given an array of integers find the sum of consecutive    *
  *          values in the array that produces the maximum value.      *
  *                                                                    *
  *  Input:  Unsorted array of positive and negative integers          *
  *  Output: Integer (max consecutive sum)                             *
  *                                                                    *
  *  Time Complexity: O(n)                                             *
  *  Auxiliary Space Complexity: O(1)                                  *
  *                                                                    *
  *  Example: input = [6, -1, 3, 5, -10]                               *
  *           output = 13 (6 + -1 + 3 + 5 = 13)                        *
  *                                                                    *
  **********************************************************************/

 /**********************************************************************
  *  Problem 2: Coin Change                                            *
  *                                                                    *
  *  Prompt: US Currency has coins in circulation with the             *
  *          following value in cents: [1, 5, 10, 25, 50, 100]         *
  *                                                                    *
  *          Given a value, find how many unique ways to make change   *
  *          given the coin values in circulation.                     *
  *                                                                    *
  *  Input:  An integer N (value from which to make change)            *
  *  Output: An integer (number of unique ways to make change)         *
  *                                                                    *
  *  Time Complexity: O(nm)                                            *
  *  Auxiliary Space Complexity: O(n)                                  *
  *                                                                    *
  *  Example: input = 11                                               *
  *           output = 4 ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],           *
  *                       [5, 1, 1, 1, 1, 1, 1],                       *
  *                       [5, 5, 1],                                   *
  *                       [10, 1])                                     *
  *                                                                    *
  *  Hint: www.geeksforgeeks.org/dynamic-programming-set-7-coin-change *
  *                                                                    *
  **********************************************************************/


var maxConsecutiveSum = function(input){

};

var coinChange = function(input){

};




////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

describe('maxConsecutiveSum FUNCTION ', function() {
  
  describe("RUN ON [6, -1, 3, 5, -10]: ", function () {
    it("should return 13", function () {
      var test = maxConsecutiveSum([6, -1, 3, 5, -10]);
      var answer = 13

      expect(test).to.eql(test);
    });
  });

  describe("RUN ON [5]: ", function () {
    it("should return 5", function () {
      var test = maxConsecutiveSum([5]);
      var answer = 5

      expect(test).to.eql(test);
    });
  });

  describe("RUN ON [−2, 1, −3, 4, −1, 2, 1, −5, 4]: ", function () {
    it("should return 6 (sum of 4, −1, 2, 1)", function () {
      var test = maxConsecutiveSum([−2, 1, −3, 4, −1, 2, 1, −5, 4]);
      var answer = 6

      expect(test).to.eql(test);
    });
  });  

});

describe('coinChange FUNCTION ', function() {
  
  describe("RUN ON 11: ", function () {
    it("should return 4", function () {
      var test = coinChange(11)
      var answer = 4

      expect(test).to.eql(test);
    });
  });

  describe("RUN ON 100: ", function () {
    it("should return 293", function () {
      var test = coinChange(100)
      var answer = 293

      expect(test).to.eql(test);
    });
  });

  describe("RUN ON 1000: ", function () {
    it("should return 2103596", function () {
      var test = coinChange(1000)
      var answer = 2103596

      expect(test).to.eql(test);
    });
  });

});
