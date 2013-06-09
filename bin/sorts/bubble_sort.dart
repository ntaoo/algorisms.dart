import 'dart:math';

void bubbleSort(List<dynamic> list) {
  int i, temp;
  bool isSortStillNeeded;
  int sortedLength = 0;
  final lastIndex = list.length - 1;

  do {
    isSortStillNeeded = false;
    for (i = 0; i < lastIndex - sortedLength; i++) {
      if (list[i] > list[i + 1]) {
        isSortStillNeeded = true;
        // swap
        temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
      }
    }
    print("Sorting : $list");
    sortedLength++;
  } while (isSortStillNeeded);
}

main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>(numbersLength);
  for (int i = 0; i < numbersLength; i++) numbers[i] = random.nextInt(maxNumber);

  print("Before Sort : $numbers");
  bubbleSort(numbers);
  print("After Sort :  $numbers");
}