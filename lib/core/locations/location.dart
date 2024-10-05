import 'dart:async';
import 'package:location/location.dart';


Location location = Location();

Future<void> checkAndRequestLocationService() async {
  bool serviceEnabled;
  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      // Handle case where location service is not enabled
    }
  }
}

Future<bool> checkAndRequestPermission() async {
  PermissionStatus permissionGranted;
  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.deniedForever) {
    return false;
  }
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return false;
    }
  }
  return true;
}

void updateMyLocation() async {
  await checkAndRequestLocationService();
  var hasPermission = await checkAndRequestPermission();
  if (hasPermission) {
    getLocation();
  }
}

void getLocation() async {
  try {
    LocationData? locationData = await location.getLocation();
    print(locationData.latitude);
    print(locationData.longitude);
  } catch (e) {
    print("Error getting location: $e");
  }
}

