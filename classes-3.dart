/**Dart Setters and Getters Methods
 * Getters and Setters methods are used to set or retrieve class fields
 */

main(){
  Person person=new Person();
  //setting person fields
  person.setAge(25);
  person.setName("İsmet Faruk");
  person.setIsWork(true);
  //display
  person.DisplayPersonInfo();
}

class Person {
  //fields
  String name;
  int age;
  bool isWork;
  
  //constructors
  Person() {
    print('One person is created.');
  }

  //getters and setters
  void setAge(int age) {
    this.age = age;
  }

  void setName(String name) {
    this.name = name;
  }

  void setIsWork(bool isWork) {
    this.isWork = isWork;
  }

  int getAge() {
    return age;
  }

  String getName() {
    return name;
  }

  bool getIsWork() {
    return isWork;
  }
  //methods
  void DisplayPersonInfo(){
    print('${getName()}, ${getAge()},${getIsWork()}');
  }
}
