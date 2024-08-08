import 'electronic_device.dart';

class SmartPhone extends ElectronicDevice {
  int? batteryLife; // in hours
  SmartPhone(
      {required String brand, required String model, required this.batteryLife})
      : super(brand: brand, model: model);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Battery life: $batteryLife hours');
    print('______________________________________________\n');
  }
}
