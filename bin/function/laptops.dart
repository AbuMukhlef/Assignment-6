import 'dart:io';

import '../core/all_file.dart';

void laptops() {
  stdout.write('1.  ');
  Laptop laptop = Laptop(brand: 'Apple', model: 'MacBook Pro', ramSize: 16);
  laptop.displayDetails();
  stdout.write('2.  ');
  Laptop laptop2 = Laptop(brand: 'Lenovo', model: 'Legion 5', ramSize: 8);
  laptop2.displayDetails();
  stdout.write('3.  ');
  Laptop laptop3 = Laptop(brand: 'Apple', model: 'MacBook Pro', ramSize: 16);
  laptop3.displayDetails();
  stdout.write('4.  ');
  Laptop laptop4 = Laptop(brand: 'Lenovo', model: 'Legion 5', ramSize: 8);
  laptop4.displayDetails();
  //________________________________________________________
  bool isSameModel = laptop.compareModel(other: laptop2);
  print('\ncompareModel: $isSameModel\n');
  //________________________________________________________
    Inventory inventory = Inventory();
  do {
    print('Choice your device to add to cart or press 0 to exit: ');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        inventory.addDevice(device: laptop);
        print('Added successfully!');
        break;
      case 2:
        inventory.addDevice(device: laptop2);
        print('Added successfully!');
        break;
      case 3:
        inventory.addDevice(device: laptop3);
        print('Added successfully!');
        break;
      case 4:
        inventory.addDevice(device: laptop4);
        print('Added successfully!');
        break;
      default:
        inventory.countTotalNumberOfDevices();
        print('Exiting...');
        showMassage();
    }
  } while (true);
}


