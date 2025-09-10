import 'plane.dart';
import 'passenger_plane.dart';
import 'cargo_plane.dart';

void main() {
  print("Base Plane (Member 1)");
  var p1 = Plane(
      model: "A320", manufacturer: "Airbus", capacity: 180, fuelLevel: 5000);
  print(p1.info());
  p1.refuel(2000);
  print(p1.info());

  print("\n Passenger Plane (Member 2)");
  var passenger = PassengerPlane(
    model: "B737",
    manufacturer: "Boeing",
    capacity: 160,
    fuelLevel: 6000,
  );
  print(passenger.info());
  passenger.boardPassengers(50);
  passenger.boardPassengers(120); // exceeds capacity
  passenger.disembark(20);
  print(passenger.info());

  print("\n Cargo Plane (Member 3)");
  var cargo = CargoPlane(
    model: "747 Freighter",
    manufacturer: "Boeing",
    capacity: 100, // tons
    fuelLevel: 8000,
  );
  print(cargo.info());
  cargo.loadCargo(40);
  cargo.loadCargo(70); // exceeds
  cargo.unloadCargo(10);
  print(cargo.info());
}
