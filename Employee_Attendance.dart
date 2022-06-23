import 'dart:math';

class Employee {
  void attendance() {
    var rand = new Random();
    var checker = rand.nextInt(2);
    if (checker == 1) {
      print("Employee is present");
    } else {
      print("Employee is absent");
    }
  }
}

void main() {
  var emp = new Employee();
  print("Welcome To employee wage Computation program");
  emp.attendance();
}
