import 'dart:io';

import '../core/all_file.dart';

void showCart() {
  Inventory inventory = Inventory();
  inventory.displayDevices();
  inventory.countTotalNumberOfDevices();

  print('2. Remove one device from cart, 3. Clear cart');
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 2:
      print('Enter the index of device to remove: ');
      int index = int.parse(stdin.readLineSync()!);
      inventory.removeDevice(device: inventory.devices[index]);
      print('Removed successfully!');
      break;
    case 3:
      inventory.clearDevice();
      print('Cleared successfully!');
      break;
    default:
      print('Invalid choice!');
  }
}
