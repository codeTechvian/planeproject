import 'plane.dart';

class PassengerPlane extends Plane {
  int passengersOnBoard = 0;

  PassengerPlane({
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

  // Unique method: board passengers
  void boardPassengers(int count) {
    if (count <= 0) {
      print("Passenger count must be positive.");
      return;
    }
    if (passengersOnBoard + count > capacity) {
      print(
          "Not enough seats! Capacity: $capacity, Current: $passengersOnBoard");
      return;
    }
    passengersOnBoard += count;
    print("$count passengers boarded. Total onboard: $passengersOnBoard");
  }

  // Unique method: disembark passengers
  void disembark(int count) {
    if (count <= 0 || count > passengersOnBoard) {
      print("Invalid number of passengers to disembark.");
      return;
    }
    passengersOnBoard -= count;
    print("$count passengers disembarked. Remaining: $passengersOnBoard");
  }

  // Override info
  @override
  String info() =>
      "PassengerPlane: $model | Seats: $capacity | Onboard: $passengersOnBoard | Fuel: $fuelLevel L";
}
