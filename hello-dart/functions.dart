/**
   * Dart Functions
   * Functions is wrap up set of statements and  used to perform specific task in any time and anywhere
   * Every function has a name and they are executed with the name
   */
main() {
  int result = Add(5, 6); //call function and assign return value to the result
  print('Result : ${result}');
  SayHelloWorld();
  TestParameter(5);
  TestParameter(5, p2: 6);
  TestParameter(5,
      p2: 6,
      p3: 67); //optional paramater name that is defined in function is required
  TestDefaultParameter(2);
  TestDefaultParameter(2, 23);
  TestOptionalDefaultParameter(10);
  TestOptionalDefaultParameter(10,p2:25);
  TestOptionalDefaultParameter(10,p2:25,p3:46);
}

// <type> <function_name> (<parameter1>,<parameter2>,...)
int Add(int number1, int number2) {
  return number1 + number2; //default return value is null
}

//function without type
void SayHelloWorld() {
  print('Hello World!');
}

//optional parameter
//<type> <function_name> (<required_parameter>,{<optional_parameter1>,<optional_parameter2>,...})
TestParameter(p1, {p2, p3}) {
  print('p1 : ${p1}');
  print('p2 : ${p2}');
  print('p3 : ${p3}');
}

//parameter default value
// <type> <function_name> (<parameter1>,<parameter2=default_value>,...)
void TestDefaultParameter(p1, [p2 = 25]) {
  print('p1 : ${p1}');
  print('p2 : ${p2}');
}

//optional parameter default value
//<type> <function_name> (<required_parameter>,{<optional_parameter1>,<optional_parameter2=default_value>,...})
TestOptionalDefaultParameter(p1, {p2 = 36, p3}) {
  print('p1 : ${p1}');
  print('p2 : ${p2}');
  print('p3 : ${p3}');
}

