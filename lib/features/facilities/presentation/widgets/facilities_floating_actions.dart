import 'package:baby_vaccination/core/models/location_model.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/features/facilities/presentation/bloc/facilities_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacilitiesFloatingActions extends StatelessWidget {
  const FacilitiesFloatingActions({super.key, required this.location});

  final LocationModel? location;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            mini: true,
            heroTag: 'my_location',
            backgroundColor: currentTheme.surface,
            onPressed: () => location != null
                ? context.read<FacilitiesBloc>().centerOnCurrentLocation(location!)
                : context
                    .read<FacilitiesBloc>()
                    .add(const FacilitiesEvent.retryLocation()),
            child: Icon(Icons.my_location, color: currentTheme.primary500),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'find_nearest',
            backgroundColor: currentTheme.primary500,
            onPressed: () {},
            child: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
