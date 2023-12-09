void main() {
User userOne = User('fred'20);
print(userOne.age);
userOne.login();

User userTwo = User('john'19);
print(userTwo.username);

SuperUser userThree = SuperUser('Alex',18);
print(userThree.username);
userThree.publish();
userThree.login();

}

class User {

String username;
int age;

User(String username, int age) {
  this.username = username;
  this.age = age;
}

void login() {
  print('user logged in');
}
}

class SuperUser extends User  {

  SuperUser(String username, String age) : super(username, age);}

  void publish() {
    print('published update');
  }