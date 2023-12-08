void main() {
  User userone = User('Mark',20);
  print(userone.username);

User userTwo = User('Alex' ,18);
print(userTwo.username);

SuperUser userthree = SuperUser('Jack', 25);
print(userthree.username);
userthree.publish();
userthree.login();
}

class User {

String? username;
int? age;

 User(String username, int age){
  this.username = username;
  this.age = age;

}

void login() {
  print('user logged in');
}
}

class SuperUser extends User {

  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print('published update');
}
}