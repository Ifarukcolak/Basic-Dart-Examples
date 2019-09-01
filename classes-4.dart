/**Dart Abstract Classes
 * Abstract classes contain abstract methods (without implemantation)
 * Abstract classes can not be instantiated
 */
main(){
  //create an instance 
  var engineer=new Engineer();
  var analyst=new Analyst();
  var teamLeader=new TeamLeader();

  //use overrided methods
  engineer.showInfo();
  engineer.showSalary();
  analyst.showInfo();
  analyst.showSalary();
  teamLeader.showInfo();
  teamLeader.showSalary();
  teamLeader.showTeam();
  
}

//abstract class is defined by "abstract" keyword
abstract class Employee{
  void showInfo();
  void showSalary();
}

abstract class Leader extends Employee{
  void showTeam();
}

class Engineer extends Employee{
  @override
  void showInfo() {
    print('I am an computer engineer');
  }

  @override
  void showSalary() {
    print('I earn five thousand dollars montly.');
  }

}

class Analyst extends Employee{
  @override
  void showInfo() {
   print('I am an analyst');
  }

  @override
  void showSalary() {
    print('I earn five thousand dollars montly.');
  }

}

class TeamLeader extends Leader{
  @override
  void showInfo() {
    print('I am team leader');
  }

  @override
  void showSalary() {
    print('I earn six thousand dollars montly.');
  }

  @override
  void showTeam() {
    print('I lead R&D team');
  }

}