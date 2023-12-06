import 'dart:io';

class User {
  String fullname;
  String password;
  String email;

  User(this.fullname, this.password, this.email);
}

List<User> users = [];

void doctorUser() {
  stdout.write('Enter your username: ');
  String fullname = stdin.readLineSync()!;
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;
  stdout.write('Enter your email: ');
  String email = stdin.readLineSync()!;

  users.add(User(fullname, password, email));

  print('User login successfully!\n');
}

User? logindoctorUser() {
  stdout.write('Enter your fullname: ');
  String fullname = stdin.readLineSync()!;
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  for (User user in users) {
   if (user.fullname == fullname && user.password == password) {
      print('Welcome, ${.fullname}!');
      return user;
    }
  }
void main() {
  int choice;

  do {
    print('Options:');
    print('1. doctor');
    print('2. logindoctor');
    print('3. Exit');
    print('Enter your choice: ');

    choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
      case 1:
        doctorUser();
        break;
      case 2:
        User? loggedInUser = logindoctorUser();
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