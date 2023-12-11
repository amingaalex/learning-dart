void main() {
  Car c = new Car();
  c.disp();
}

class Car {
  //field
  String engine = "E1001"; 
  
  //Function
  void disp() {
    print(engine);
  }
}