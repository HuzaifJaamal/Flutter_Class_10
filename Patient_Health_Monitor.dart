import 'dart:async';
import 'dart:io';

List<Map<String, String>> adminUser = [
  {"email": "abc@gmail.com", "password": "123"}
];
// Map adminUser = {
//     "email": "abc@gmail.com",
//     "password": "123",
//   };
List<Map<String, String>> patientUser = [];
// List patientUser = [];
bool logedIn = false;
void main() {
  print("====PATIENT HEALTH MOITOR SYSTEM====");
  var admin = true;
  List<String> Bluetooth = [];
  // print("Press 1 for Amdin Login");
  // print("Press 2 for Add New Admin User");
  // print("Press 3 or any Key for Exit");
  // int adminMode = int.parse(stdin.readLineSync()!);
  // if (adminMode == 1) {
  //   adminLogin();
  //   print("Press 4 for Connecting Bluetooth");
  //   int btMode = int.parse(stdin.readLineSync()!);
  //   if (btMode == 4) {
  //     connectBluetooth();
  //   }
  //   print("Press 5 for Patient Login");
  //   print("Press 6 for Add New Patient");
  //   int patientMode = int.parse(stdin.readLineSync()!);
  //   if (patientMode == 5) {
  //     patientLogin();
  //   } else if (patientMode == 6) {
  //     addPatientUser();
  //   }
  // } else if (adminMode == 2) {
  //   addAdminUser();
  //   print(adminUser);
  // }

  while (admin) {
    print("Press 1 for Amdin Login");
    print("Press 2 for Add New Admin User");
    print("Press 3 or any Key for Exit");
    var admin1 = true;
    int adminMode = int.parse(stdin.readLineSync()!);

    if (adminMode == 1) {
      adminLogin();
      if (Bluetooth.isEmpty) {
        print("Press 4 for Connecting Bluetooth");
        int btMode = int.parse(stdin.readLineSync()!);
        if (btMode == 4) {
          connectBluetooth();
          Bluetooth.add("Connected");
        }
      }
      // print(Bluetooth);
      while (admin1) {
        print("====== Patienxt Login ======");
        print("Press 5 for Patient Login");
        print("Press 6 for Add New Patient");
        print("press 3 or any Key for exit Patient Login");
        int patientMode = int.parse(stdin.readLineSync()!);
        if (patientMode == 5) {
          patientLogin();
        } else if (patientMode == 6) {
          addPatientUser();
        } else {
          print("Patient Login Exit");
          admin1 = false;
        }
      }
    } else if (adminMode == 2) {
      addAdminUser();
      print(adminUser);
    } else {
      print("app exit");
      admin = false;
    }
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
  logedIn = false;
  while (!logedIn) {
    print("====== Admin Login ======");
    // adminUser.contains;
    // print(adminUser);
    print("Enter Your Admin ID");
    var adminUserId = stdin.readLineSync();
    print("Enter Your Password");
    var adminUserPw = stdin.readLineSync();
    bool check = adminUser.contains(adminUserId);
    print(adminUserId);

    // if (adminUser.contains == adminUserId &&
    //     adminUser.contains == adminUserPw) {
    //   print("object");
    // }
    for (var credentials in adminUser) {
      if (adminUserId == credentials['email'] &&
          adminUserPw == credentials['password']) {
        print('User Login Successful');
        logedIn = true;
      } else {
        print('Login Failed 2');
      }
    }
  }
}

addAdminUser() {
  adminLogin();
  print("====== New Admin Registeration ======");
  print("Enter New Admin ID");
  var adminNewUserId = stdin.readLineSync()!;
  print("Enter Password");
  var adminNewUserPw = stdin.readLineSync()!;
  adminUser.add({'email': "$adminNewUserId", "password": "$adminNewUserPw"});
}

updateAdminUser() {
  print("admin");
}

connectBluetooth() {
  print("Connected with address = ABC");
}

patientLogin() {
  print(patientUser);
  logedIn = false;

  while (!logedIn) {
    if (patientUser.isNotEmpty) {
      print("Enter Your Patient ID");
      var patientUserId = stdin.readLineSync();
      print("Enter Your Patient Password");
      var patientUserPw = stdin.readLineSync();

      for (var credentials in patientUser) {
        if (patientUserId == credentials['patientID'] &&
            patientUserPw == credentials['password']) {
          print('User Login Successful');
          logedIn = true;
        } else {
          print('Login Failed 1');
        }
      }
    } else {
      print("Please Register Patient");
      addPatientUser();
    }
  }
}

addPatientUser() {
  print("====== New Patient Registeration ======");
  print("Enter Patient ID");
  var patientUserId = stdin.readLineSync()!;
  print("Enter Patient Password");
  var patientUserPw = stdin.readLineSync()!;
  patientUser
      .add({'patientID': "$patientUserId", "password": "$patientUserPw"});
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
