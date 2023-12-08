void main() {
User userOne = User();
print(userOne.age);
}

class User {
  String username = 'Alex';
  int age = 18;

  void login() {
    print('user logged in');
  }
}