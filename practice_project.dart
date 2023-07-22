import 'dart:io';

// void main() {
// var abc = " ";
// var row = 5;
// int count = 1;
// for (var i = 1; i < row; i++) {
//   stdout.write("");
//   for (var j = 1; j < i; j++) {}
// }
// }

List tasks = [];
void main() {
  print("====Welcome to Todo Application====");
  var isContinue = true;
  while (isContinue) {
    print("Press 1 for Add Task");
    print("Press 2 for View Task");
    print("Press 3 for Update Task");
    print("Press 4 for Delect Task");
    print("Press 5 or any Key for Exit");

    var userInput = stdin.readLineSync();
    if (userInput == "1") {
      addTask();
    } else if (userInput == "2") {
      viewTask();
    } else if (userInput == "3") {
      updateTask();
    } else if (userInput == "4") {
      delectTask();
    } else {
      print("Program ended");
      isContinue = false;
    }
  }
}

addTask() {
  print("Enter Your Task Title");
  var taskTitle = stdin.readLineSync();
  print("Enter Your Task Due Date");
  var taskDueDate = stdin.readLineSync();
  Map task = {
    "taskTitle": taskTitle,
    "taskDueDate": taskDueDate,
  };
  tasks.add(task);
  print("Task Added -> $task");
}

viewTask() {
  print("My Tasks : $tasks");
  for (var i = 0; i < tasks.length; i++) {
    print("$i My Tasks : ${tasks[i]}");
  }
}

updateTask() {}
delectTask() {}
