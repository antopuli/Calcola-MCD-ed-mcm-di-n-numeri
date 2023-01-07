Object greatestCommonDivisor(List numbers) {
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

  try {
    return divisors2D
        .fold<Set>(
            divisors2D.first.toSet(), (a, b) => a.intersection(b.toSet()))
        .toList()[divisors2D
            .fold<Set>(
                divisors2D.first.toSet(), (a, b) => a.intersection(b.toSet()))
            .toList()
            .length -
        1];
  } catch (e) {
    return '∄';
  }
}
