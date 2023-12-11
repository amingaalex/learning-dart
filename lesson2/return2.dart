void main() {
  print('something');
  String greet = greeting();
  int age = getAge();
  print(age);
  print(greet);
}


String greeting() {
  return 'hello';
}

int getAge () {
  return 30;
}