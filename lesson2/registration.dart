void main() {
User userOne = User('Alex',25);
print(userOne.username);
userOne.login();

User userTwo = User('John',25);
    print(userTwo.username);
}

class User {
        String? username;
        int? age; 

      User(String username, int age) {
         this.username = username;
          this.age = age;
  }

  void login() {
    print('user logged in');
  }
}