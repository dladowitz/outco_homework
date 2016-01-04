 /********************************************************************** 
  *                          Homework II                               *
  *                                                                    *
  *  Prompt: Given a set S, return the power set P(S), which is        *
  *          a set of all subsets of S.                                *
  *                                                                    *
  *  Input:  A String                                                  *
  *  Output: An Array with the power set of the input string           *
  *                                                                    *
  *  Example: S = "abc", P(S) = ['', 'a', 'b','c','ab','ac','bc','abc']*                                                               *
  *                                                                    *
  *  Note: There should not be any duplicates in the power set         *
  *        ('ab' and 'ba' are considered the same), and it will always *
  *        begin with an empty string ('')                             *
  *                                                                    *
  **********************************************************************/
 
var powerSet = function(str){

}










////////////////////////////////////////////////////////////
///////////////  DO NOT TOUCH TEST BELOW!!!  ///////////////
////////////////////////////////////////////////////////////

var expect = require('chai').expect;

describe('POWERSET FUNCTION ', function() {
  
  describe("RUN ON 'abc': ", function () {
    it("should return [ 'abc', 'ab', 'ac', 'a', 'bc', 'b', 'c', '' ]", function () {
      var test = powerSet('abc');
      var answers = [ 'abc', 'ab', 'ac', 'a', 'bc', 'b', 'c', '' ];

      for (var i = 0; i < answers.length; i++){
        expect(test).to.include(answers[i]);
      }
      expect(test.length).to.eql(answers.length);
      console.log('');
    });
  });

  describe("RUN ON ''", function () {
    it("should handle an empty string input", function () {
      var test = powerSet('');
      expect(test[0]).to.eql('');
      expect(test.length).to.eql(1);
    });
  });

  describe("RUN ON 'abca'", function () {
    it("should handle duplicates", function () {
      var test = powerSet('abca');
      var answers = [ '','a','c','ca','b','ba','bc','bca','aa','ac','aca','ab','aba','abc','abca' ];

      for (var i = 0; i < answers.length; i++){
        expect(test).to.include(answers[i]);
      }
      expect(test.length).to.eql(answers.length);
    });
  });

});