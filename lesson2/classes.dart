

void main() {
User userOne = User();
print(userOne.age);
userOne.login();

User userTwo = User();
print(userTwo.username);
}

class User {

String username = "Alex";
int age = 18;

void login() {
  print('user logged in');
}
}