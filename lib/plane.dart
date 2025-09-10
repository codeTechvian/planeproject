class Plane {
  final String model;
  final String manufacturer;

  // Private fields
  int _capacity;
  double _fuelLevel; // in liters

  Plane({
    required this.model,
    required this.manufacturer,
    required int capacity,
    required double fuelLevel,
  })  : _capacity = capacity > 0 ? capacity : 160,
        _fuelLevel = fuelLevel >= 0 ? fuelLevel : 0;

  // Getter & Setter for capacity
  int get capacity => _capacity;
  set capacity(int value) {
    if (value <= 0) {
      throw ArgumentError("Capacity must be positive.");
    }
    _capacity = value;
  }

  // Getter & Setter for fuel
  double get fuelLevel => _fuelLevel;
  set fuelLevel(double value) {
    if (value < 0) {
      throw ArgumentError("Fuel level cannot be negative.");
    }
    _fuelLevel = value;
  }

  // Method 1: Refuel plane
  void refuel(double liters) {
    if (liters <= 0) {
      print("Refuel amount must be positive.");
      return;
    }
    _fuelLevel += liters;
    print("$model refueled with $liters L. Current fuel: $_fuelLevel L");
  }

  // Method 2: Display info
  String info() =>
      "Plane: $model ($manufacturer) | Capacity: $_capacity | Fuel: $_fuelLevel L";
}
