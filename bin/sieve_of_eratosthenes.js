var sieveOfEratosthenes = function(maxNumber) {
  var numbers = [];
  for (var i = 2; i <= maxNumber; i ++) {
    numbers.push(i);
  }
  var primeNumbers = [];

  var filterMultipleNumbers = function(arrayOfNumbers, number) {
    return arrayOfNumbers.filter(function(n){ return n % number !== 0;});
  };

  var squareOfLastPrimeNumber = function(primeNumbers) {
    var lastElement = primeNumbers[primeNumbers.length - 1];
    return lastElement * lastElement;
  };

  do {
    primeNumbers.push(numbers[0]);
    numbers = filterMultipleNumbers(numbers, numbers[0]);
  } while (squareOfLastPrimeNumber(primeNumbers) <= numbers[numbers.length - 1]);

  return primeNumbers.concat(numbers);
};

console.log(sieveOfEratosthenes(1000).join(','));