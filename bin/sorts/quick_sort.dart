import 'dart:math';

void quickSort(List<dynamic> list, [int lowIndex, int highIndex]) {
  print("Sorting : $list");

  if (lowIndex == null) lowIndex = 0;
  if (highIndex == null) highIndex = list.length - 1;

  int i = lowIndex, j = highIndex;
  int tmp;
  var pivotElement = list[(lowIndex + highIndex) ~/ 2];

  // partition
  while (i <= j) {
    while (list[i] < pivotElement) i++;
    while (list[j] > pivotElement) j--;
    if (i <= j) {
      tmp = list[i];
      list[i] = list[j];
      list[j] = tmp;
      i++;
      j--;
    }
  }

  if (lowIndex < j) quickSort(list, lowIndex, j);
  if (i < highIndex) quickSort(list, i, highIndex);
}

main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>();
  for (int i = 0; i < numbersLength; i++) numbers.add(random.nextInt(maxNumber));

  print("Before Sort : $numbers");
  quickSort(numbers);
  print("After Sort :  $numbers");
}