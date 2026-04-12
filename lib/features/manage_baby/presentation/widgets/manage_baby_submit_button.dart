import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_event.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageBabySubmitButton extends StatelessWidget {
  const ManageBabySubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageBabyBloc, ManageBabyState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );
        final bloc = context.read<ManageBabyBloc>();

        return InkWell(
          onTap: isLoading ? null : () => bloc.add(const ManageBabyEvent.addBaby()),
          borderRadius: BorderRadius.circular(100),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                colors: [Color(0xFF476500), Color(0xFF5D7F13)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF476500).withValues(alpha: 0.2),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.loc.saveAndStartTracking,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
