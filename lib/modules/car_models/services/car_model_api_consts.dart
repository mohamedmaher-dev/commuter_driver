class CarModelApiConsts {
  CarModelApiConsts._();

  static const String baseUrl = 'https://vpic.nhtsa.dot.gov/api/vehicles/';
  static const String getMakesForVehicleType =
      'GetMakesForVehicleType/Passenger%20Car?format=json';
  static const String getModelsForMake =
      'GetModelsForMakeIdYear/makeId/{makeId}/vehicleType/Passenger%20Car?format=json';
}
