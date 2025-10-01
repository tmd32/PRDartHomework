import 'dart:io';
import 'package:homework1/homework1.dart' as homework1;

void main(List<String> arguments) {

  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? '');

  if(number == null){
    return;
  }

  if(number! < 0){
      print(number);
      return;
  }

  int result = 0;
  while(number! > 0)
  {
    result += number! % 10;
    number = number! ~/ 10;
  }
  
  print(result);
}