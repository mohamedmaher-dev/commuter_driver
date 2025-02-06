import 'package:flutter/material.dart';

import '../../../../../core/localization/generated/l10n.dart';

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
    final Language language = Language.of(context);

    return ListTile(
      leading: const Icon(Icons.location_on),
      title: Text(language.location),
      subtitle: ElevatedButton(
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
        ),
        onPressed: onPickLocation,
        child: location == null
            ? const Icon(Icons.add)
            : Text(
                location ?? language.not_selected,
              ),
      ),
    );
  }
}
