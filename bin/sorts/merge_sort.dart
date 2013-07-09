import 'dart:math';

// Using fixed-length List
void mergeSort(List<dynamic> list) {
  if (list.length <= 1) return;

  void mergeBySort(int startIndexL, int endIndexL, int startIndexH, int endIndexH) {
    List<dynamic> merge = new List((endIndexL - startIndexL + 1) + (endIndexH - startIndexH + 1));
    int mergeIndex = 0;
    int indexL = startIndexL;
    int indexH = startIndexH;

    // fill the marge until either of the two ranges finish merging.
    while (indexL <= endIndexL && indexH <= endIndexH) {
      if (list[indexL] < list[indexH]) {
        merge[mergeIndex] = list[indexL];
        mergeIndex++;
        indexL++;
      } else {
        merge[mergeIndex] = list[indexH];
        mergeIndex++;
        indexH++;
      }
    }

    // fill the rest of the merge with the rest of the target.
    if (indexL > endIndexL) {
      for (indexH; indexH <= endIndexH; indexH++) {
        merge[mergeIndex] = list[indexH];
        mergeIndex++;
      }
    } else {
      for (indexL; indexL <= endIndexL; indexL++) {
        merge[mergeIndex] = list[indexL];
        mergeIndex++;
      }
    }

    // replace the range of the list with merged.
    mergeIndex = 0;
    for (int i = startIndexL; i <= endIndexH; i++) {
      list[i] = merge[mergeIndex];
      mergeIndex++;
    }
  }

  void sort(int startIndex, int endIndex) {
    if (startIndex < endIndex) {
      int middleIndex = startIndex + ((endIndex - startIndex) / 2).toInt();
      sort(startIndex, middleIndex);
      sort(middleIndex + 1, endIndex);
      mergeBySort(startIndex, middleIndex, middleIndex + 1, endIndex);
    }
  }

  sort(0, list.length - 1);
}

main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>(numbersLength);
  for (int i = 0; i < numbersLength; i++) numbers[i] = random.nextInt(maxNumber);

  print("Before Sort : $numbers");
  mergeSort(numbers);
  print("After Sort :  $numbers");
}