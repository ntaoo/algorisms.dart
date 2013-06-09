import 'dart:math';

List<dynamic> bubbleSort(List<dynamic> list) {
  int i, j;
  bool isSortStillNeeded;
  int k = 0;

  do {
    isSortStillNeeded = false;
    for (i = 0; i < list.length - 1 - k; i++) {
      if (list[i] > list[i + 1]) {
        isSortStillNeeded = true;
        j = list[i];
        list[i] = list[i + 1];
        list[i + 1] = j;
      }
    }
    print("Sorting : $list");
    k++;
  } while (isSortStillNeeded == true);

  return list;
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