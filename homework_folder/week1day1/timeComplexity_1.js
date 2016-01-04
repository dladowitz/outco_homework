/**
 *  Additonal Problems: Complexity Analysis
 *
 *  Instructions:
 *   List the Time and Auxiliary Space Complexity of each of the following functions in the space provided
 **/

/**
 * Problem 1:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function findMax(array){
  var maximum = array[0];

  for(var i = 1; i < count(array); i++) {
    if(array[i] > maximum) {
      maximum = array[i]
    }
  }

  return  maximum;
}

/**
 * Problem 2:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function primeFactors(n){
  var factors = []; 
  var divisor = 2;
  
  while(n > 2){
    if(n % divisor == 0) {
      factors.push(divisor); 
      n = n / divisor;
    }
    else { 
      divisor++; 
    }     
  }

  return factors;
}

/**
 * Problem 3:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function indexOf(element){
  for (var x = 0, count = this.length; x < count; x++) {
    if(this[x] === element) {
      return x;
    }
  }

  return -1;
};

/**
 * Problem 4:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function slice(begin){
  var newArray = [];

  for (var x = begin, count = this.length; x < count; x++) {
    newArray.push(this[x]);
  }

  return newArray;
};

/**
 * Problem 5:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function doTheDo (string) {
  var len = string.length;
  var counter = 0;
  var copy = "";

  do {
    do {
      copy += string + string;
      counter++;
    } while (counter > len)
  } while (!copy)

  return copy;
};

/**
 * Problem 6:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function nestedAdd (array) {
  var len = array.length;
  var tempSum = 0;
  var subArr = [];
  var result = [];
  var j, k;

  for (var i = 0; i < len; i++) {
    j = 0;

    while (j < len) {
      k = j;

      do {
        tempSum += array[k];
        k++;
      } while (k < len)

      subArr.push(tempSum);
      tempSum = 0;
      j++;
    }

    result.push(subArr);
    subArr = [];
  }

  return result;
};

/**
 * Problem 7:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function traverseDOM() {

  function traverse(child) {
    var len = child.children.length || 0;

    console.log(child.nodeName);

    for(var i = 0; i < len; i++) {
      traverse(child.children[i]);
    }
  };

  traverse(document.body);
};

/**
 * Problem 8:
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function mystery(a, b) {
  if (b === 0)         
    return 0;
  else if (b % 2 === 0) 
    return mystery(a + a, b / 2);
  else                 
    return mystery(a + a, b / 2) + a;
};