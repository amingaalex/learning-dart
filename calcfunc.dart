import 'dart:io';

int mult(int x, int y){
  int res = x * y;
  return res;
}

int add(int x, int y){
  int res = x + y;
  return res;
}

void main(){
  print("Select option :  \n 1. Multiplication  \n 2. Addition");
  print("Enter Option");
   
  int? option = int.parse(stdin.readLineSync()!);

  if(option == 1){
    print("Enter first number");
    int? num1 = int.parse(stdin.readLineSync()!);
    print("Enter second number");
    int? num2 = int.parse(stdin.readLineSync()!);
    int res = mult(num1, num2);
    print("Result is $res");
  } else if(option == 2){
    print("Enter first number");
    int? num1 = int.parse(stdin.readLineSync()!);
    print("Enter second number");
    int? num2 = int.parse(stdin.readLineSync()!);
    int res = add(num1, num2);
    print("Result is $res");
  } else {
    print("Invalid option");
  }
}

git config --global user.name "amingaalex"
git config --global user.email "amingaalex20@gmail.com"
git config --global push.default matching
git config --global alias.co checkout
git init
git add . 
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/amingaalex/learning-dart.git
git push -u origin main