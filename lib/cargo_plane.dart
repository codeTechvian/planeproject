import 'plane.dart';

class CargoPlane extends Plane {
  double cargoLoad = 0; // in tons

  CargoPlane({
    required String model,
    required String manufacturer,
    required int capacity,
    required double fuelLevel,
  }) : super(
          model: model,
          manufacturer: manufacturer,
          capacity: capacity,
          fuelLevel: fuelLevel,
        );

  // Unique method: load cargo
  void loadCargo(double tons) {
    if (tons <= 0) {
      print("Cargo must be positive.");
      return;
    }
    if (cargoLoad + tons > capacity) {
      print("Overload! Max cargo capacity: $capacity tons.");
      return;
    }
    cargoLoad += tons;
    print("Loaded $tons tons. Current cargo: $cargoLoad tons.");
  }

  // Unique method: unload cargo
  void unloadCargo(double tons) {
    if (tons <= 0 || tons > cargoLoad) {
      print("Invalid unload amount.");
      return;
    }
    cargoLoad -= tons;
    print("Unloaded $tons tons. Remaining cargo: $cargoLoad tons.");
  }

  // Override info
  @override
  String info() =>
      "CargoPlane: $model | Max Cargo: $capacity tons | Current: $cargoLoad tons | Fuel: $fuelLevel L";
}
