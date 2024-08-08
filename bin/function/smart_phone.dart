import 'dart:io';

import '../core/all_file.dart';

void smartPhone() {
  stdout.write('1.  ');
  SmartPhone smartPhone =
      SmartPhone(brand: 'Apple', model: 'iPhone 13', batteryLife: 5);
  smartPhone.displayDetails();
  stdout.write('2.  ');
  SmartPhone smartPhone2 =
      SmartPhone(brand: 'Samsung', model: 'Galaxy S21', batteryLife: 7);
  smartPhone2.displayDetails();
  stdout.write('3.  ');
  SmartPhone smartPhone3 =
      SmartPhone(brand: 'Apple', model: 'iPhone 14', batteryLife: 6);
  smartPhone3.displayDetails();
  stdout.write('4.  ');
  SmartPhone smartPhone4 =
      SmartPhone(brand: 'Samsung', model: 'Galaxy S22', batteryLife: 8);
  smartPhone4.displayDetails();
  //________________________________________________________
  bool isSameModel = smartPhone.compareModel(other: smartPhone3);
  print('\n Is it same model: $isSameModel\n');
  //________________________________________________________
  Inventory inventory = Inventory();
  do {
    print('Choice your device to add to cart or press 0 to exit: ');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        inventory.addDevice(device: smartPhone);
        print('Added successfully!');
        break;
      case 2:
        inventory.addDevice(device: smartPhone2);
        print('Added successfully!');
        break;
      case 3:
        inventory.addDevice(device: smartPhone3);
        print('Added successfully!');
        break;
      case 4:
        inventory.addDevice(device: smartPhone4);
        print('Added successfully!');
        break;
      default:
        inventory.countTotalNumberOfDevices();
        print('Exiting...');
        showMassage();
    }
  } while (true);
}
