import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({
    super.key,
    required this.location,
    required this.onPickLocation,
  });
  final String? location;
  final Function() onPickLocation;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_on),
      title: const Text('الموقع'),
      subtitle: ElevatedButton(
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
        ),
        onPressed: onPickLocation,
        child: location == null
            ? const Icon(Icons.add)
            : Text(
                location ?? "لم يتم التحديد",
              ),
      ),
    );
  }
}
