import 'dart:math';

List<int> bubbleSort(List<int> numbers) {
  int i, j;
  bool isSortStillNeeded;
  int k = 0;

  do {
    isSortStillNeeded = false;
    for (i = 0; i < numbers.length - 1 - k; i++) {
      if (numbers[i] > numbers[i + 1]) {
        isSortStillNeeded = true;
        j = numbers[i];
        numbers[i] = numbers[i + 1];
        numbers[i + 1] = j;
      }
    }
    print("Sorting : $numbers");
    k++;
  } while (isSortStillNeeded == true);

  return numbers;
}

void main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>(numbersLength);
  for (int i = 0; i < numbersLength; i++) numbers[i] = random.nextInt(maxNumber);

  print("Before Sort : $numbers");
  final result = bubbleSort(numbers);
  print("After Sort : $result");

  numbers.sort();
  print("Use Builtin Sort : $numbers");
}