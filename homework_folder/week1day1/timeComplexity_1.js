/**
 *  Homework I
 *
 *  Instructions:
 *   List the Time and Auxiliary Space Complexity of each of the following functions in the space provided
 **/


/**
 * Problem 1:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function firstTimesLast(array) {
  var result = null;

  if (array.length < 2) {
    return result;
  } else {
    result = array[0] * array[length-1];
    return result;
  }
};

/**
 * Problem 2:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function mostFrequentOccurrence(string) {
  var lowerString = string.toLowerCase();
  var letters = {};
  var mostFrequent = [];
  
  for(var i = 0; i < lowerString.length; i++) {
    if (letters[lowerString[i]]) {
      letters[lowerString[i]] ++;
    } else {
      letters[lowerString[i]] = 1;
    }
  }

  for(var key in letters) {
    if (!mostFrequent.length) {
      mostFrequent = [key, letters[key]];
    } else {
      if (letters[key] > mostFrequent[1]) {
        mostFrequent = [key, letters[key]];
      }
    }
  }

  return mostFrequent[0];
};

/**
 * Problem 3:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function printUnorderedPairs(array) {
 for (var i = 0; i < array.length; i++) {
    for (var j = i; j < array.length; j++) {
      console.log(array[i] + "," + array[j]);
    }
  }
};

/**
 * Problem 4:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function sortedArraySearch(sortedArray, target) {

  var result = false;

  var hunt = function(start, end){
    if (start >= end-1 && (sortedArray[start] === target || sortedArray[end] === target)){
      result = true;
      return;
    } else if (start >= end-1){
      return;
    }

    var mid = Math.floor((start + end) / 2);

    if (sortedArray[mid] === target){
      result = true;
      return;
    } else if (target > sortedArray[mid]){
      hunt(mid, end);
    } else if (target < sortedArray[mid]){
      hunt(start, mid);
    }

  }

  hunt(0, sortedArray.length-1);
  return result;
};

/**
 * Problem 5:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function makeCombinedMatrix(arrayOne, arrayTwo) {
  var result = [];
  var row;

  for (var i = 0; i < arrayOne.length; i++) {
    row = [];

    for (var j = 0; j < arrayTwo.length; j++) {
      row.push(arrayTwo[j] + arrayOne[i]);
    }

    result.push(row);
  }

  return result;
};