import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_event.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ManageBabyFormSection extends StatelessWidget {
  const ManageBabyFormSection({super.key});

  Future<void> _pickDate(BuildContext context, ManageBabyBloc bloc) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      bloc.add(ManageBabyEvent.updateDate(picked));
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ManageBabyBloc>();

    return BlocBuilder<ManageBabyBloc, ManageBabyState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ManageBabyLabel(text: context.read<ManageBabyBloc>().nameController.text.isEmpty ? context.loc.fullName : context.loc.fullName), 
            // Wait, I should just use the label.
            ManageBabyLabel(text: context.loc.fullName),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE9E8E2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                controller: bloc.nameController,
                decoration: InputDecoration(
                  hintText: context.loc.enterName,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                ),
                validator:
                    (value) => value!.isEmpty ? context.loc.enterName : null,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ManageBabyLabel(text: context.loc.dateOfBirth),
                      GestureDetector(
                        onTap: () => _pickDate(context, bloc),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE9E8E2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  bloc.selectedDate != null
                                      ? DateFormat(
                                          'MMM d, yyyy',
                                        ).format(bloc.selectedDate!)
                                      : context.loc.select,
                                  style: const TextStyle(
                                    color: Color(0xFF1B1C18),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Icon(
                                Icons.calendar_today,
                                color: Color(0xFF444939),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ManageBabyLabel(text: context.loc.gender),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE9E8E2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<GenderType>(
                            isExpanded: true,
                            hint: Text(context.loc.select),
                            value: bloc.selectedGender,
                            items: GenderType.values.map((g) {
                              return DropdownMenuItem(
                                value: g,
                                child: Text(
                                  g == GenderType.boy
                                      ? context.loc.boy
                                      : context.loc.girl,
                                ),
                              );
                            }).toList(),
                            onChanged: (val) {
                              if (val != null) {
                                bloc.add(ManageBabyEvent.updateGender(val));
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
