import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_event.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ManageBabyScreen extends StatelessWidget {
  const ManageBabyScreen({super.key});

  List<String> _getGenders(BuildContext context) => [
    context.loc.boy,
    context.loc.girl,
    context.loc.other,
  ];

  static const List<String> _bloodTypes = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];

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

  void _submit(ManageBabyBloc bloc) {
    bloc.add(const ManageBabyEvent.addBaby());
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ManageBabyBloc>();

    return BlocConsumer<ManageBabyBloc, ManageBabyState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () => Navigator.of(context).pop(),
          error: (failure) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                failure.message == 'Please fill all the details'
                    ? context.loc.pleaseFillAllDetails
                    : failure.message == 'Unauthenticated'
                    ? context.loc.unauthenticated
                    : failure.message ?? context.loc.unknownError,
              ),
            ),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFFAFAF3),
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Form(
              key: bloc.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildHeroSection(context),
                  const SizedBox(height: 32),
                  _buildFormSection(context, bloc),
                  const SizedBox(height: 32),
                  _buildHealthDetailsSection(context, bloc),
                  const SizedBox(height: 32),
                  _buildSubmitButton(
                    context,
                    state.maybeWhen(loading: () => true, orElse: () => false),
                    bloc,
                  ),
                  const SizedBox(height: 24),
                  _buildSecurityNote(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAF3),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.close, color: Color(0xFF444939)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.child_care, color: Color(0xFF476500)),
          const SizedBox(width: 8),
          Text(
            'TinyShield',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: const Color(0xFF476500),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFE9E8E2),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.grey),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xFF476500),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          context.loc.addYourLittleOne,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF1B1C18),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          context.loc.manageBabySubtitle,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: const Color(0xFF444939)),
        ),
      ],
    );
  }

  Widget _buildFormSection(BuildContext context, ManageBabyBloc bloc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(context.loc.fullName),
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
            validator: (value) => value!.isEmpty ? context.loc.enterName : null,
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
                  _buildLabel(context.loc.dateOfBirth),
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
                              style: const TextStyle(color: Color(0xFF1B1C18)),
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
                  _buildLabel(context.loc.gender),
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
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Text(context.loc.select),
                        value: bloc.selectedGender,
                        items: _getGenders(context).map((g) {
                          return DropdownMenuItem(value: g, child: Text(g));
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
  }

  Widget _buildHealthDetailsSection(BuildContext context, ManageBabyBloc bloc) {
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
          _buildLabel(context.loc.bloodType),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2,
            ),
            itemCount: _bloodTypes.length,
            itemBuilder: (context, index) {
              final blood = _bloodTypes[index];
              final isSelected = bloc.selectedBloodType == blood;
              return GestureDetector(
                onTap: () => bloc.add(ManageBabyEvent.updateBloodType(blood)),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFF476500) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFF476500)
                          : const Color(0xFFC4C9B4).withValues(alpha: 0.2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    blood,
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
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF476500),
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(
    BuildContext context,
    bool isLoading,
    ManageBabyBloc bloc,
  ) {
    return InkWell(
      onTap: isLoading ? null : () => _submit(bloc),
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
  }

  Widget _buildSecurityNote(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFDFA0).withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.verified_user,
              color: Color(0xFF795900),
              size: 32,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.yourDataIsSecured,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5C4300),
                    fontSize: 16,
                  ),
                ),
                Text(
                  context.loc.encryptedMedicalJournals,
                  style: const TextStyle(
                    color: Color(0xFF5C4300),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
