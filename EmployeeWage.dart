import 'dart:math';

class Employee {
  int empWorkingHr = 0;
  int wagePerHr = 20;
  int dailyWage = 0;
  int empType() {
    int rand = Random().nextInt(3);
    print(rand);
    switch (rand) {
      case 1:
        print("Employee is part Time");
        empWorkingHr = 4;
        break;

      case 2:
        print("Employee is Full Time");
        empWorkingHr = 8;
        break;

      default:
        print("Employee is absent");
        empWorkingHr = 0;
        break;
    }
    return empWorkingHr;
  }

  void wageComputation(Function empType) {
    if (empWorkingHr == 4) {
      dailyWage = wagePerHr * empWorkingHr;
      print("Employee eage is $dailyWage");
    } else {
      dailyWage = wagePerHr * empWorkingHr;
      print("Employee wage is $dailyWage");
    }
  }
}

void main() {
  var emp = new Employee();
  print("Welcome To employee wage Computation program");
  emp.empType();
  emp.wageComputation(emp.empType);
}
