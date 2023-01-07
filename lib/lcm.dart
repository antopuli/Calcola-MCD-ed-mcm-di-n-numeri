Object leastCommonMultiple(List numbers) {
  List multiples2D = [];

  for (int i = 0; i < numbers.length; i++) {
    List loopMultiples = [];
    int value = numbers[i];

    for (int ni = 1; ni <= 50; ni++) {
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
