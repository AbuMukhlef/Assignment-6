class ElectronicDevice {
  String? brand;
  String? model;

  ElectronicDevice({required this.brand, required this.model});

  void displayDetails() {
    print('Brand: $brand , Model: $model');
  }

  bool compareModel({required ElectronicDevice other}) {
    return model == other.model;
  }
}
