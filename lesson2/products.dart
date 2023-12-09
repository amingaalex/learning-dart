import 'dart:io';
// 1. Create a class called Product
class Product{
  double? price;
  String? name;
  String? description;
  String? category;
  bool? inStock;
  int? rating;
  int? id;
  Product({this.price, this.name, this.description, this.category, this.inStock, this.rating, this.id});
  void display(){
    print("Name: $name");
    print("Price: $price");
    print("Description: $description");
    print("Category: $category");
    print("In Stock: $inStock");
    print("Rating: $rating");
    print("ID: $id");
  } 
}

// 2. Create a list of products

List<Product> products = [
  Product(price: 100, name: "iPhone", description: "Apple iPhone", category: "Electronics", inStock: true, rating: 4, id: 1),
  Product(price: 200, name: "Samsung", description: "Samsung Galaxy", category: "Electronics", inStock: true, rating: 4, id: 2),
  Product(price: 300, name: "Macbook", description: "Apple Macbook", category: "Electronics", inStock: true, rating: 4, id: 3),
  Product(price: 400, name: "Dell", description: "Dell Laptop", category: "Electronics", inStock: true, rating: 4, id: 4),
  Product(price: 500, name: "HP", description: "HP Laptop", category: "Electronics", inStock: true, rating: 4, id: 5),
  Product(price: 600, name: "Lenovo", description: "Lenovo Laptop", category: "Electronics", inStock: true, rating: 4, id: 6),
  Product(price: 700, name: "Acer", description: "Acer Laptop", category: "Electronics", inStock: true, rating: 4, id: 7),
  Product(price: 800, name: "Asus", description: "Asus Laptop", category: "Electronics", inStock: true, rating: 4, id: 8),
  Product(price: 900, name: "Sony", description: "Sony Laptop", category: "Electronics", inStock: true, rating: 4, id: 9),
  Product(price: 1000, name: "Toshiba", description: "Toshiba Laptop", category: "Electronics", inStock: true, rating: 4, id: 10),
];

// 3. Create a function called displayProducts that takes in a list of products and displays each product
void displayProducts(List<Product> products){
  for(Product product in products){
    product.display();
  }
}

// 4. Create a function called searchProducts that takes in a list of products and a search term and returns a list of products that contain the search term
List<Product> searchProducts(List<Product> products, String searchTerm){
  List<Product> results = [];
  for(Product product in products){
    if(product.name!.toLowerCase().contains(searchTerm.toLowerCase())){
      results.add(product);
    }
  }
  return results;
}

// 5. Create a function called filterProducts that takes in a list of products and a category and returns a list of products that match the category
List<Product> filterProducts(List<Product> products, String category){
  List<Product> results = [];
  for(Product product in products){
    if(product.category!.toLowerCase() == category.toLowerCase()){
      results.add(product);
    }
  }
  return results;
}

// 6. Create a function called sortProducts that takes in a list of products and a sort term and returns a list of products sorted by the sort term
List<Product> sortProducts(List<Product> products, String sortTerm){
  List<Product> results = [];
  if(sortTerm.toLowerCase() == "price"){
    results = products;
    results.sort((a,b) => a.price!.compareTo(b.price!));
  }else if(sortTerm.toLowerCase() == "rating"){
    results = products;
    results.sort((a,b) => a.rating!.compareTo(b.rating!));
  }else if(sortTerm.toLowerCase() == "name"){
    results = products;
    results.sort((a,b) => a.name!.compareTo(b.name!));
  }
  return results;
}

// Main Function
void main() {
  // 7. Create a variable called choice
  int choice;
  // 8. Create a do while loop that displays the following options and prompts the user to enter a choice
  do{
    print("Options:");
    print("1. Display Products");
    print("2. Search Products");
    print("3. Filter Products");
    print("4. Sort Products");
    print("5. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    // 9. If the user enters 1, call the displayProducts function
    if(choice == 1){
      displayProducts(products);
    }
    // 10. If the user enters 2, prompt the user to enter a search term and call the searchProducts function
    else if(choice == 2){
      print("Enter a search term: ");
      String searchTerm = stdin.readLineSync()!;
      List<Product> results = searchProducts(products, searchTerm);
      displayProducts(results);
    }
    // 11. If the user enters 3, prompt the user to enter a category and call the filterProducts function
    else if(choice == 3){
      print("Enter a category: ");
      String category = stdin.readLineSync()!;
      List<Product> results = filterProducts(products, category);
      displayProducts(results);
    }
    // 12. If the user enters 4, prompt the user to enter a sort term and call the sortProducts function
    else if(choice == 4){
      print("Enter a sort term: ");
      String sortTerm = stdin.readLineSync()!;
      List<Product> results = sortProducts(products, sortTerm);
      displayProducts(results);
    }
    // 13. If the user enters 5, exit the program
    else if(choice == 5){
      print("Exiting...");
    }
    // 14. If the user enters anything else, display an error message
    else{
      print("Invalid choice");
    }
  }while(choice != 5);
}

