import 'dart:io';
import 'core/all_file.dart';

void mainDashboard() {
  print('Main Dashboard:');

  print("\n **** Welcome to the Abu_Mukhlef's Electronics Store! ****\n");
  print("we have a wide range of products for you to choose from.");
  print("Mobile phones, laptops, and more..(coming soon)!\n");
  print("1. Mobile phones, 2. Laptops, 3. Exit, 4. Show Cart");
  print("Enter your choice: ");

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
      print("Exiting...");
      exit(0);
    case 4:
      showCart();
      break;
    default:
      print("Invalid choice, Exiting...");
      exit(0);
  }
}
