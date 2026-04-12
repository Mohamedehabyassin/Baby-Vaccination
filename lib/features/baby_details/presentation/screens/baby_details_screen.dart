import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_bloc.dart';
import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BabyDetailsScreen extends StatelessWidget {
  const BabyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // We assume the bloc was provided via BlocProvider routing with GetBabiesEvent already added
    // e.g. BlocProvider(create: (ctx) => GetIt.I<BabyDetailsBloc>()..add(const BabyDetailsEvent.getBabies()))
    return Scaffold(
      appBar: AppBar(title: const Text('Baby Details')),
      body: BlocBuilder<BabyDetailsBloc, BabyDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (failure) => Center(
              child: Text(failure.message ?? 'Unknown error'),
            ),
            loaded: (babies) {
              if (babies.isEmpty) {
                return const Center(child: Text('No babies found'));
              }
              return ListView.builder(
                itemCount: babies.length,
                itemBuilder: (context, index) {
                  final baby = babies[index];
                  return ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.child_care)),
                    title: Text(baby.fullName),
                    subtitle: Text(
                      '${baby.gender} | ${baby.bloodType} | ${DateFormat('MMM d, yyyy').format(baby.dateOfBirth)}',
                    ),
                  );
                },
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
