import 'dart:io';
import 'all_file.dart';

void showMassage() {
  print(
      '1. Go to Mobile phones, 2. Go to Laptops, 3. Go to main dashboard, 4. Exit');
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("________ ***** Mobile phones ***** ________\n");
      smartPhone();
      break;
    case 2:
      print("________ ***** Laptops ***** ________\n");
      laptops();
      break;
    case 3:
      print("________ ***** Main Dashboard ***** ________\n");
      mainDashboard();
      break;
    case 4:
      print("Exiting...");
      exit(0);
    default:
      print("Invalid choice, Exiting...");
  }
}
