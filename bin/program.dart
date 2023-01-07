import 'dart:core';
import 'dart:io';
import '../lib/gcd.dart';
import '../lib/lcm.dart';

void main() {
  stdout.writeln("Calcola MCD ed mcm");
  stdout.writeln("Inserisci i numeri separati da uno spazio ' ': ");
  try {
    var numbers = stdin.readLineSync();
    List numbersList = numbers!.split(' ');
    List<int> nums = [];
    for (var i = 0; i < numbersList.length; i++) {
      var value = int.parse(numbersList[i]);
      nums.add(value);
    }
    print("MCD: ${greatestCommonDivisor(nums)}");
    print("mcm: ${leastCommonMultiple(nums)}");
  } catch (e) {
    print("ERRORE! Non inserire spazi dopo l'ultimo numero");
    main();
  }
}
