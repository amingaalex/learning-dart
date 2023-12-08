
import "dart:io";
String? prompt(String promptText) {
  print("The prompt is: ${promptText}");
  String? answer = stdin.readLineSync();
  return answer;
}

double promptDouble() {
  print("Enter a number:");
  double? myNum = double.parse(stdin.readLineSync());
  return myNum;
}

void main() {
  double num1 = promptDouble();
  double num2 = promptDouble();
  String? op = prompt("Enter an operation(+,-,*,/):");

  

  switch(op) {
    case "+":
    print(num1 + num2);
    break;
    case "*":
    print(num1 * num2);
    break;
    case "-":
    print(num1 - num2);
    break;
    case "/":
    print(num1 / num2);
    break;
default:
print("Invalid operation");
  }
}