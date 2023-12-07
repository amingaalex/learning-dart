void main() {
  print("something");
  String greet = greeting();
  int age = getAge();
  print(age);
  print(greet);
}

String greeting() => "hello";


int getAge() => 30;