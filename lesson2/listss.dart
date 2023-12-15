void main() {

//Lists
var mylist = [1,2,3,4,5,6,7,8,9,10];
print(mylist);
print(mylist[0]);
//Change an item
mylist[0] = 100;
print(mylist);
//Create An Empty List
var emptylist = [];
print(emptylist);

//Add to empty list
emptylist.add(100);
print(emptylist);

//Add multiplle to empty list

//Insert at specific position (position, item)
mylist.insert(3,900);
print(mylist);
//Insertmany
mylist.insertAll(1,[99,98,97]);
print(mylist);

//Mixed lists
var mixedlist = [1,2,3, "John", "Bob"];
print(mixedlist);
//Remove from list
mixedlist.remove("John");
print(mixedlist);

//Remove from specific location
mixedlist.removeAt(2);
print(mixedlist);
}