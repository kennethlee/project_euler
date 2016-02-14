/*
 * Project Euler, Problem 6: Sum square difference
 * https://projecteuler.net/problem=6
 */

function numRange(num) {
  // Create a range of numbers, with num as upperbound.
  var total = [];
  for (var i = 1; i <= num; i++) {
    total.push(i);
  }
  return total;
}

function sumOfSquares(num) {
  return (
    numRange(num).map(function(i) { return Math.pow(i, 2) })
      .reduce(function(prev,next) { return prev + next })
  );
}

function squareOfTheSum(num) {
  return (
    Math.pow(numRange(num).reduce(function(prev, next) {
      return prev + next
    }), 2)
  );
}

console.log(squareOfTheSum(100) - sumOfSquares(100));
