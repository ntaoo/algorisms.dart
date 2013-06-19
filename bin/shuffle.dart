import 'dart:math';

// Fisher-Yates
void shuffle(list) {
  var random = new Random();
  var i = list.length;
  while(i > 0) {
    var j = random.nextInt(i);
    var t = list[--i];
    list[i] = list[j];
    list[j] = t;
  }
}

main() {
  const maxNumber = 100000;
  const numbersLength = 10;
  var random = new Random();

  var numbers = new List<int>(numbersLength);
  for (int i = 0; i < numbersLength; i++) numbers[i] = random.nextInt(maxNumber);

  print("Before Shuffle : $numbers");
  shuffle(numbers);
  print("After Shuffle :  $numbers");
}