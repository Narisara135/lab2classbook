import 'dart:io';

void main() {
  var number, score;
  print("Enter the number of Students: ");
  number = stdin.readLineSync();
  var numberint = int.parse(number);
  double total = 0, avg, max = 0, min = 50;
  //assert(numberint == number);
  for (var i = 0; i < numberint; i++) {
    print('Enter score Students #$i');
    score = stdin.readLineSync();
    var scoredouble = double.parse(score);
    assert(scoredouble == score);
    //print(scoredouble);
    total = total + scoredouble;
    if (scoredouble > max) {
      max = scoredouble;
    }
    if (scoredouble < min) {
      min = scoredouble;
    }
  }
  print('Total score of $numberint student(s) is $total');
  avg = total / numberint;
  print("Average score is $avg");
  print("Maximum score is $max");
  print("Minimum score is $min");
}
