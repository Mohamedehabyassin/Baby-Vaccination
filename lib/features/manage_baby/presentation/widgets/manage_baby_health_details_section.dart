import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_event.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageBabyHealthDetailsSection extends StatelessWidget {
  const ManageBabyHealthDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ManageBabyBloc>();

    return BlocBuilder<ManageBabyBloc, ManageBabyState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F4ED),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFBF00),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.medical_information,
                      color: Color(0xFF6D5000),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.healthEssentials,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          context.loc.importantForEmergencyRecords,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF444939),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ManageBabyLabel(text: context.loc.bloodType),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 2,
                ),
                itemCount: BloodType.values.length,
                itemBuilder: (context, index) {
                  final blood = BloodType.values[index];
                  final isSelected = bloc.selectedBloodType == blood;
                  return GestureDetector(
                    onTap:
                        () => bloc.add(ManageBabyEvent.updateBloodType(blood)),
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            isSelected ? const Color(0xFF476500) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF476500)
                              : const Color(0xFFC4C9B4).withValues(alpha: 0.2),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        blood.displayName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF1B1C18),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
