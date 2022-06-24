import 'dart:math';

class Employee {
  int empType() {
    int empPresent = 1;
    int EmpAbsent = 0;
    int check = Random().nextInt(2) + 1;
    switch (check) {
      case 1:
        1;
        break;

      case 2:
        0;
        break;
    }
    return check;
  }

  int fullTimeEmpWorkingHr = 8;
  int partTimeEmpWorkingHr = 4;
  int wagePerHr = 20;
  final int totalWorkingDays = 20;
  void wageComputation() {
    int dailyWage = 0;
    int working_day = 0;
    print(empType());
    while (working_day < 20) {
      if (empType() == 1) {
        int rand = Random().nextInt(2) + 1;
        if (rand == 1) {
          dailyWage = dailyWage + wagePerHr * fullTimeEmpWorkingHr;
        } else {
          dailyWage = dailyWage + wagePerHr * partTimeEmpWorkingHr;
        }
      } else {
        working_day--;
      }
      working_day++;
    }
    print("Monthly Wage= $dailyWage");
    print("Working Days is $working_day");
  }
}

void main() {
  var emp = new Employee();
  print("Welcome To employee wage Computation program");
  emp.empType();
  emp.wageComputation();
}
