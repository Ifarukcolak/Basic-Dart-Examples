//Dart Programming Language Simple Examples
main() {
  //it is a entry point for our program and also it is requried, special.
  print(
      '---- \u2665\u2665\u2665 Dart Programming Language \u2665\u2665\u2665 ----'); //it is used to display content to the screen
  print('');

  /**Hello Dart 
   * This is basic example for the dart to understand structure of language. 
   * Age is a number type (you can determine as 'int age=25')
   * name is a string type (you can determine as 'string name='İsmet Faruk')
   */
  var age = 25;
  var name = 'İsmet Faruk';
  print('Your age ${age} and your name ${name}');
  print('');
  /**
   * List Uses
   */
  var list = [2, 5, 2, 7, 8, 34, 8, 3];

  //some list methods
  list.insertAll(2, [78, 34, 12, 9]); //insert iterable values specified index
  list.removeLast(); //remove last element
  list.add(98); //add element

  for (int i = 0; i < list.length; i++) {
    print('${i + 1}.value of list is ${list[i]}');
  }
  print('');
  /**Conditional Operators 
   * '?' uses like if-else operator
   * before '?' condition
   * after '?' values that return 
   */

  var condition = true;
  print(condition ? 't' : 'f');

  //another uses of conditional operators
  var value1 = null;
  var value2 = 'not null';
  print(value1 ??
      value2); // ?? operator checks the first value then return if it is not null, vice versa

  /**Relational Operators 
   * '>', '<', '==','<=','>=','!=' uses of in dart same as C++,C
   */
  var number1 = 25, number2 = 5, result;

  result = number1 > number2;
  print('number1 is greater than number2 : ${result.toString()}');

  result = number1 < number2;
  print('number2 is greater than number1 : ${result.toString()}');
  print('');
  /**'is' Operator
 * Checks type on an object
 */
  var fo = 'Faruk';
  print(fo is int);
  print(100 >> 2);
  print('');
  /**Cascade notation (..) Operator
   * It allows you perform a sequence of operations on the same object
   */
  var obj = new Test();
  var obj1 = new Test();

  obj.setA(12);
  obj.setB(25);
  obj.showValues();

  obj1
    ..setA(32)
    ..setB(78)
    ..showValues();
  print('');
  /**Dart Sets
   * Unordered list of distinct values of same types
   */
  var fruits = <String>{'Apple', 'Orange', 'Banana', 'Banana'};
  print(
      fruits); //it returns {Apple, Orange,Banana}, see not two times 'Banana' :)
  fruits.add('Strawberry');
  print(fruits.contains('Apple') ? 'Yes, there is.' : 'No, there is not.');
  //another way of display values of Set
  fruits.forEach((fruit) {
    print('Fruit : ${fruit}');
  });
  print('');
  /**Set Operations
   * Union -> a + b but not repeat same value(s)
   * Intersection ->a U b
   * Difference -> a / b
   */
  var clusterA = <int>{1, 2, 3, 4, 5};
  var clusterB = <int>{4, 5, 6, 7, 8, 9};
  print('Union : ${clusterA.union(clusterB)}');
  print('Intersection : ${clusterA.intersection(clusterB)}');
  print('Subtracting A,B : ${clusterA.difference(clusterB)}');
  print('');
  /**Dart Map
   * Represents a set of values as key-value pairs.
   */
  var daysOfWeek = {
    1: 'Monday',
    2: 'TuesDay',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday'
  };
  daysOfWeek[7] = 'Sunday'; //7 is not an index, it is key value
  print(daysOfWeek);
  print('');
  /**Dart Runes
   * 32-bit unicode characters represented using special syntax
   * It also provides a chance to  using emoji characters
   */
  var laughingEmoji = '\u{1f600}';
  print(laughingEmoji);
  print('');
  /**Enums
   * Set of predefined named values that are limited
   */
  print(Colors.values); //it return all values

  Colors.values.forEach((color) => {
        print('Value : ${color},Index : ${color.index}')
      }); //it returns value and index of each member
  print('');
  /** Dart Control Statements
   * if-else, switch-case
   */
  //if-else
  bool cond = true;
  if (cond) {
    //do something
  } else {
    //do something
  }

  //another use of if-else
  int num = 3 ^ 7 + 1;

  if (num < 2000) {
    //do something
  } else if (num == 2187) {
    //do something
  } else {
    //do something
  }

  //use of switch-case
  var selectedDayIndex = 1;
  switch (selectedDayIndex) {
    case 0:
      print('Monday');
      break; //if you do not use break, every values return after this case (if there is no break)
    case 1:
      print('Tuesday');
      break;
    case 2:
      //statements
      break;
    case 3:
      //statements
      break;
    case 4:
      //statements
      break;
    case 5:
      //statements
      break;
    case 6:
      //statements
      break;
  }
  print('');
  /**Dart Loops
   * Loops are used to execute the block of code repeatedly for a specified number or until it meets the condition    
   */

  for (int i = 0; i < 5; i++) {
    print(i * 2);
  }

  //another use of for loop
  var brandList = ['Volvo', 'Ford', 'Bmw', 'Mercedes'];
  for (var brand in brandList) {
    print('Brand : ${brand}');
  }

  //while loop
  bool state = true;
  int ctr = 5;
  while (state) {
    if (ctr > 0) {
      state = false;
    }
    print('Counter is bigger than zero');
    ctr--;
  }

  ///do while loop
  ///it executes always one time at least.
  do {
    print('Counter is not bigger than zero but it executes.');
  } while (state); //state is false but the code block executes one time.

  /**Dart Assert Statement
   * Usefull debugging tool
   * Assert statement is used to test boolean conditions.
   * It is only used development mode
   * To enable asserts, run code like 'dart --enable-asserts helloworld.dart'
   */

  int num1=60;
  assert(num1>61);
  //to attach a message
  assert(num1>61,'num1 is not bigger than 61');
}

class Test {
  var a;
  var b;

  void setA(a) {
    this.a = a;
  }

  void setB(b) {
    this.b = b;
  }

  void showValues() {
    print('a : ${this.a}, b : ${this.b}');
  }
}

enum Colors { Yellow, Green, Blue, Red, Black, White, Purple }
