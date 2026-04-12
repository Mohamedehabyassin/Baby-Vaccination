import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/core/widgets/app_bar/custom_app_bar.dart';
import 'package:baby_vaccination/core/widgets/toast/custom_toast_message.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_form_section.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_health_details_section.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_hero_section.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_security_note.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/widgets/manage_baby_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageBabyScreen extends StatelessWidget {
  const ManageBabyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ManageBabyBloc>();

    return BlocListener<ManageBabyBloc, ManageBabyState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            CustomToastMessage.show(
              context: context,
              type: ToastType.success,
              message: context.loc.success,
            );
            Navigator.of(context).pop();
          },
          error: (failure) {
            CustomToastMessage.show(
              context: context,
              type: ToastType.error,
              message: failure.message,
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: CustomAppBar(title: context.loc.addChild),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Form(
            key: bloc.formKey,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ManageBabyHeroSection(),
                SizedBox(height: 32),
                ManageBabyFormSection(),
                SizedBox(height: 32),
                ManageBabyHealthDetailsSection(),
                SizedBox(height: 32),
                ManageBabySubmitButton(),
                SizedBox(height: 24),
                ManageBabySecurityNote(),
              ],
            ),
          ),
        ),
      ),
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
}
