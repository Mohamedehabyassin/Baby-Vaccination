import 'package:baby_vaccination/core/services/location/location_errors_enum.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/features/facilities/presentation/bloc/facilities_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacilitiesErrorView extends StatelessWidget {
  const FacilitiesErrorView({super.key, required this.state});

  final FacilitiesError state;

  @override
  Widget build(BuildContext context) {
    final errorMessage = LocationErrorsEnum.getErrorMessage(
      state.failure.error ?? LocationErrorsEnum.locationFetchException,
    );

    return Container(
      color: currentTheme.surface,
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_off, size: 64, color: currentTheme.primary200),
            const SizedBox(height: 16),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(color: currentTheme.onSurface, fontSize: 16),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.read<FacilitiesBloc>().add(
                const FacilitiesEvent.retryLocation(),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: currentTheme.primary500,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
