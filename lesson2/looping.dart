import"dart:io";
String prompt(String promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer;
}

double promptDouble(){

}
void main() {

  String answer = "Alex";
  String guess = "";

  while(guess!=answer) {
  guess = prompt("Enter a guess:");  
}

print("You Won!");

}