import 'dart:math';

class Employee {
  int attendance() {
    int wagePerHour = 20;
    int workingHour = 8;
    int dailyWage = 0;
    var rand = new Random();
    var checker = rand.nextInt(2);
    if (checker == 1) {
      print("Employee is present");
      dailyWage = wagePerHour * workingHour;
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

