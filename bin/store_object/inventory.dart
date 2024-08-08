import 'electronic_device.dart';

class Inventory {
  List<ElectronicDevice> devices = [];
  static int count = 0;
  void addDevice({required ElectronicDevice device}) {
    devices.add(device);
    count++;
  }

  void removeDevice({required ElectronicDevice device}) {
    devices.remove(device);
    count--;
  }

  void clearDevice() {
    devices.clear();
  }

  void countTotalNumberOfDevices() {
    print('Total number of devices in your cart: $count');
  }

  void displayDevices() {
    for (var dev in devices) {
      dev.displayDetails();
    }
  }
}
