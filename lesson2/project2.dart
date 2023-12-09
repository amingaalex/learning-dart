import 'dart:io';

class User {
  String? fullname;
  String? password;
  String? email;

  User(this.fullname, this.password, this.email);
  
  get username => null;
}
  List<User>users = [];

  void registerUser() {
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync()!;
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;
  stdout.write('Enter your email: ');
  String email = stdin.readLineSync()!;

  users.add(User(username, password, email));

  print('User registered successfully!\n');
}

User? loginUser() {
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync()!;
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  for (User user in users) {
    if (user.username == username && user.password == password) {
      print('Welcome, ${user.username}!');
      return user;
    }
  }

  print('Login failed. Invalid username or password.\n');
  return null;
}

void displayUsers(List<User> users) {
  print('\nList of registered users:');
  for (User user in users) {
    print('Username: ${user.username}, Email: ${user.email}');
  }
}

void main() {
  int choice;

  do {
    print('Options:');
    print('1. Register');
    print('2. Login');
    print('3. Exit');
    print('Enter your choice: ');

    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        registerUser();
        break;
      case 2:
        User? loggedInUser = loginUser();
        if (loggedInUser != null) {
          displayUsers(users);
        }
        break;
      case 3:
        print('Exiting program.');
        break;
      default:
        print('Invalid choice. Please enter a valid option.\n');
        break;
    }
  } while (choice != 3);
}


