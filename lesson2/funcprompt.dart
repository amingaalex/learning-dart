import "dart:io";
String? prompt(String promptText) {
  print("The promptText is: ${promptText}");
  String? answer = stdin.readLineSync();
  return answer;
}

void main() {
  
  String? color = prompt("Enter a color:");
  String? pluralnoun = prompt("Enter a plural noun:");
  String? celebrity = prompt("Enter a celebrity:");
}