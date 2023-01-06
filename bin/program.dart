import 'dart:core';
import 'dart:io';
import 'package:program/gcd.dart';

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
