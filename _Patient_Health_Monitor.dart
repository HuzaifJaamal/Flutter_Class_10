// import 'dart:async';
import 'dart:io';

List<Map<String, String>> adminUser = [
  {"email": "ab", "password": "123"}
];
// Map adminUser = {
//     "email": "abc@gmail.com",
//     "password": "123",
//   };
// var adminNewUser = stdin.readLineSync()!;
// Map<String, dynamic> adminUser1 = {
//     adminNewUser : {"email": "abc@gmail.com", "password": "123"},
//     "secA": {"student": 60, "timing": "7 to 9"},
//     "secB": {"student": 60, "timing": "9 to 11"}
//   };
List<Map<String, String>> patientUser = [];
// List patientUser = [];
bool logedIn = false;
bool isSuccess = false;
void main() {
  print("==== PATIENT HEALTH MOITOR SYSTEM ====");
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
        print("====== Patient Login ======");
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

    // if (adminUser[adminNewUser]["email"] == adminUser &&
    //   adminUser[adminNewUser]["password"] == adminUserPw) {
    // print('User Login Successful');
    // } else {
    // print('Login Failed 2');
    // }
    // if (adminUser.contains == adminUserId &&
    //     adminUser.contains == adminUserPw) {
    //   print("object");
    // }

    adminCredentials(adminUserId, adminUserPw);
  }
}

void adminCredentials(String? adminUserId, String? adminUserPw) {
  bool userEmailExit =
      adminUser.any((credentials) => credentials['email'] == adminUserId);
  bool userPassExit =
      adminUser.any((credentials) => credentials['password'] == adminUserPw);

  if (userEmailExit && userPassExit) {
    print('User Login Successfully !!!!');
    logedIn = true;
    return;
  } else {
    print('User Not Exit in list !!!');
  }
}

addAdminUser() {
  adminLogin();
  print("====== New Admin Registeration ======");
  // var adminNewUser = stdin.readLineSync()!;
  print("Enter New Admin ID");
  var adminNewUserId = stdin.readLineSync()!;
  print("Enter Password");
  var adminNewUserPw = stdin.readLineSync()!;
  adminUser.add({'email': "$adminNewUserId", "password": "$adminNewUserPw"});
  // adminUser1.addAll({adminNewUser:{'email': "$adminNewUserId", "password": "$adminNewUserPw"}});
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

      //   for (var credentials in patientUser) {
      //     if (patientUserId == credentials['patientID'] &&
      //         patientUserPw == credentials['password']) {
      //       print('User Login Successful');
      //       logedIn = true;
      //     } else {
      //       print('Login Failed 1');
      //     }
      //   }
      patientCredentials(patientUserId, patientUserPw);
    } else {
      print("Please Register Patient");
      addPatientUser();
    }
  }
}

void patientCredentials(String? patientUserId, String? patientUserPw) {
  bool userEmailExit = patientUser
      .any((credentials) => credentials['patientID'] == patientUserId);
  bool userPassExit = patientUser
      .any((credentials) => credentials['password'] == patientUserPw);

  if (userEmailExit && userPassExit) {
    print('User Login Successfully !!!!');
    logedIn = true;
    return;
  } else {
    print('User Login Failed !!!');
  }
}

addPatientUser() {
  print("====== New Patient Registeration ======");
  print("Enter Patient ID");
  var newPatientUserId = stdin.readLineSync()!;
  print("Enter Patient Password");
  var newPatientUserPw = stdin.readLineSync()!;
  patientUser
      .add({'patientID': "$newPatientUserId", "password": "$newPatientUserPw"});
  print(patientUser);
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
