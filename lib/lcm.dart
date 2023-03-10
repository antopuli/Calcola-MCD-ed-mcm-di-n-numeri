Object leastCommonMultiple(List numbers) {
  List multiples2D = [];

  numbers.sort();

  for (int i = 0; i < numbers.length; i++) {
    List loopMultiples = [];
    int value = numbers[i];

    for (int ni = 1; ni <= numbers[numbers.length - 1]; ni++) {
      loopMultiples.add(value * ni);
    }

    multiples2D.add(loopMultiples);
  }

  try {
    return multiples2D
        .fold<Set>(
            multiples2D.first.toSet(), (a, b) => a.intersection(b.toSet()))
        .toList()[0];
  } catch (e) {
    return '∄';
  }
}
