import"dart:io";
String? prompt(String promptText){
  print(promptText);
  String? answer = stdin.readLineSync();
  return answer;
}

bool promptDouble(){
   return true;
}
void main() {

  String answer = "Alex";
  String? guess = "";
  int guessCount = 0;

  while(guess !=answer) {
  guess = prompt("Enter a guess:"); 
  guessCount++;
}

print("You Won in ${guessCount}guesses!");

}