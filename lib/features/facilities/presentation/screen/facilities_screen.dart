import 'package:baby_vaccination/core/models/location_model.dart';
import 'package:baby_vaccination/features/facilities/presentation/bloc/facilities_bloc.dart';
import 'package:baby_vaccination/features/facilities/presentation/widgets/facilities_error_view.dart';
import 'package:baby_vaccination/features/facilities/presentation/widgets/facilities_floating_actions.dart';
import 'package:baby_vaccination/features/facilities/presentation/widgets/facilities_loading_overlay.dart';
import 'package:baby_vaccination/features/facilities/presentation/widgets/facilities_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacilitiesScreen extends StatelessWidget {
  const FacilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('FacilitiesScreen build');

    return Scaffold(
      body: Stack(
        children: [
          // GoogleMap is NOT inside BlocBuilder — it stays alive across state changes,
          // which prevents the SurfaceFlinger "updateAcquireFence: Did not find frame" flood.
          // GoogleMap(
          //   initialCameraPosition: _initialCameraPosition,
          //   myLocationEnabled: true,
          //   myLocationButtonEnabled: false,
          //   zoomControlsEnabled: false,
          //   compassEnabled: false,
          //   mapToolbarEnabled: false,
          //   onMapCreated: bloc.setMapController,
          //   markers: bloc.buildMarkers(location),
          // ),
          const FacilitiesTopBar(),
          // Use BlocBuilder only for the parts that actually change.
          BlocBuilder<FacilitiesBloc, FacilitiesState>(
            builder: (context, state) {
              final LocationModel? location = state.whenOrNull(
                loaded: (loc) => loc,
              );

              return Stack(
                children: [
                  FacilitiesFloatingActions(location: location),
                  if (state is FacilitiesLoading)
                    const FacilitiesLoadingOverlay(),
                  if (state is FacilitiesError)
                    FacilitiesErrorView(state: state),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
