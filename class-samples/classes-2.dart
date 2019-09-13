/**Dart Overriding Example
 *Subclasses can use superclasses methods that is not private without define it
 *In some case, subclasses can define superclasses method with same name,arguments but that methods execute differently.   
 */

class SuperClass {
  void Display() {
    print('Hello from SuperClass');
  }
}

//override Display method
class SubClass extends SuperClass {
  void Display() {
    print('Hello from SubClass');
  }
}

//directly use SuperClass Display method
class SubClass1 extends SuperClass {}

main() {
  var instance = new SuperClass();
  var instance_2 = new SubClass();
  var instance_3 = new SubClass1();

  instance.Display();
  instance_2.Display();
  instance_3.Display();
  
}
