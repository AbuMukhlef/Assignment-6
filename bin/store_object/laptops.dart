import 'electronic_device.dart';

class Laptop extends ElectronicDevice {
  int? ramSize; // in GB
  Laptop({required String brand, required String model, required this.ramSize})
      : super(brand: brand, model: model);
  @override
  void displayDetails() {
    super.displayDetails();
    print('RAM size: $ramSize GB');
    print('______________________________________________\n');
  }
}
