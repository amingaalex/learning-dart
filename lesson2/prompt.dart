import "dart:io";
String? prompt(String promptText) {
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer;
}

void main() {
  
  String? color = prompt("Enter a color:");
  print("The color is ${color}");
}