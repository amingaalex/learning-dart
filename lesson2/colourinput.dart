import "dart:io";
void main() {
print("Enter a color:");
String? color = stdin.readLineSync();

print("Enter a plural noun:");
String? pluralnoun = stdin.readLineSync();

print("Enter a celebrity:");
String? celebrity = stdin.readLineSync();

print("Roses are ${color}");
print("${pluralnoun} are blue");
print("i love ${celebrity}");

}