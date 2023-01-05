import 'dart:core';
import 'dart:io';

void main() {
  stdout.writeln("Calcola Massimo Comune Divisore");
  stdout.writeln("Inserisci i numeri separati da uno spazio ' ': ");
  var numbers = stdin.readLineSync();
  List numbersList = numbers!.split(' ');
  List<int> nums = [];
  for (var i = 0; i < numbersList.length; i++) {
    var value = int.parse(numbersList[i]);
    nums.add(value);
  }
  print("MCD: ${greatestCommonDivisor(nums)}");
}

int greatestCommonDivisor(List numbers) {
  List divisors2D = [];

  var index = 0;
  while (index < numbers.length) {
    List loopDivisors = [];
    int x = numbers[index];

    for (var i = 1; i <= x; i++) {
      if ((x % i) == 0) {
        loopDivisors.add(i);
      }
    }

    divisors2D.add(loopDivisors);
    index++;
  }

  final commonElements = divisors2D.fold<Set>(
      divisors2D.first.toSet(), (a, b) => a.intersection(b.toSet()));

  return commonElements.toList()[commonElements.toList().length - 1];
}
