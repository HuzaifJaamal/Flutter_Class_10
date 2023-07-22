import 'dart:io';

List adminUser = [];
List patientUser = [];
void main() {
  print("====PATIENT HEALTH MOITOR SYSTEM====");
  var admin = true;
  while (admin) {
    print("Press 1 for Amdin Login");
    print("Press 2 for Add New Admin User");
    print("Press 3 or any Key for Exit");

    var adminMode = stdin.readLineSync();
    if (adminMode == 1) {
      adminLogin();
    } else {}
  }

  // while (isContinue) {
  //   print("Press 1 for Add Task");
  //   print("Press 2 for View Task");
  //   print("Press 3 for Update Task");
  //   print("Press 4 for Delect Task");
  //   print("Press 5 or any Key for Exit");

  //   var userInput = stdin.readLineSync();
  //   if (userInput == "1") {
  //     addTask();
  //   } else if (userInput == "2") {
  //     viewTask();
  //   } else if (userInput == "3") {
  //     updateTask();
  //   } else if (userInput == "4") {
  //     delectTask();
  //   } else {
  //     print("Program ended");
  //     isContinue = false;
  //   }
  // }
}

adminLogin() {
  print("Enter Your Admin ID");
  var adminUserId = stdin.readLineSync();
  print("Enter Your Password");
  var adminUserPw = stdin.readLineSync();
  if (adminUserId == true && adminUserPw == false) {
    print("Right");
  } else {
    print("Invalid ID or Password");
  }
}

// addTask() {
//   print("Enter Your Task Title");
//   var taskTitle = stdin.readLineSync();
//   print("Enter Your Task Due Date");
//   var taskDueDate = stdin.readLineSync();
//   Map task = {
//     "taskTitle": taskTitle,
//     "taskDueDate": taskDueDate,
//   };
//   tasks.add(task);
//   print("Task Added -> $task");
// }

// viewTask() {
//   print("My Tasks : $tasks");
//   for (var i = 0; i < tasks.length; i++) {
//     print("$i My Tasks : ${tasks[i]}");
//   }
// }

updateTask() {}
delectTask() {}
