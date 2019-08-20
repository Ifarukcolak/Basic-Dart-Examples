/**Dart Classes
 * Dart is an object-oriented programming language
 * and supports concepts of class, object, interfaces etc
 */
main(){
print(Person.definitionOfClass); //use of static keyword
Person person=new Person(); //create instance from Person class

//use setter method to assing value to the fields
person.setAge(25);
person.setName('İsmet Faruk');
person.setSurname('Çolak');
//show full info
person.showPersonInfo();
}
class Person{

//fields
String name,surname;
int age;
static String definitionOfClass='This class is used to create a Person'; //static object is accessable from another class without creating a instance
//getter and setter
void setName(name){
  this.name=name; //this keyword is used to refer instance of current class
}

void setSurname(surname){
  this.surname=surname;
}

void setAge(age){
  this.age=age;
}

void showPersonInfo(){
  print('${this.name} ${this.surname}, ${this.age}');
}
//constructors
Person(){
  print('One person created.');
}
}