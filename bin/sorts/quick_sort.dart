import 'dart:math';

void quickSort(List<dynamic> list, [int lowIndex = 0, int highIndex]) {
  print("Sorting : $list");

  if (highIndex == null) highIndex = list.length - 1;

  int li = lowIndex, hi = highIndex;
  int tmp;

  var pivot = list[(lowIndex + highIndex) ~/ 2];

  // partition
  while (li <= hi) {
    while (list[li] < pivot) li++;
    while (list[hi] > pivot) hi--;
    if (li <= hi) {
      tmp = list[li];
      list[li] = list[hi];
      list[hi] = tmp;
      li++;
      hi--;
    }
  }

  if (lowIndex < hi) quickSort(list, lowIndex, hi);
  if (li < highIndex) quickSort(list, li, highIndex);
}

main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>(numbersLength);
  for (int i = 0; i < numbersLength; i++) numbers[i] = random.nextInt(maxNumber);
//  var numbers = [9, 8, 5, 4, 6]; TODO unit test it.

  print("Before Sort : $numbers");
  quickSort(numbers);
  print("After Sort :  $numbers");
}