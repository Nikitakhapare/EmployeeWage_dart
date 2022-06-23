import 'dart:math';

class Employee {
  int attendance() {
    int wagePerHour = 20;
    int fullTimeWorkingHour = 8;
    int partTimeWorkingHour = 4;
    int dailyWage = 0;
    var checker = Random().nextInt(2);
    if (checker == 1) {
      print("Employee is present");
      int rand = Random().nextInt(2);
      if (rand == 1) {
        print("Employee is Full Time Present");
        dailyWage = wagePerHour * fullTimeWorkingHour;
      } else {
        print("Employee is Part Time Present");
        dailyWage = wagePerHour * partTimeWorkingHour;
      }
    } else {
      print("Employee is absent");
    }
    return dailyWage;
  }
}

void main() {
  var emp = new Employee();
  print("Welcome To employee wage Computation program");
  print("Employee wage is ${emp.attendance()}");
}
