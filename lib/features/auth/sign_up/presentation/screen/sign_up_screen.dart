import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/button/custom_button.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/widgets/text_field/custom_text_field.dart';
import 'package:baby_vaccination/core/widgets/toast/custom_toast_message.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/use_cases/sign_up_with_email_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/use_cases/sign_up_with_google_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:baby_vaccination/core/routing/app_routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpBloc bloc = context.read<SignUpBloc>();
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is Error) {
          CustomToastMessage.show(
            context: context,
            message: state.failure.message,
            type: ToastType.error,
          );
        } else if (state is Success) {
          context.go(AppRoutes.mainNav);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(Dimensions.padding16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  AppSpacing.vertical32(),
                  CustomText(
                    text: context.loc.signUp,
                    style: CustomTextStyle.h1Bold,
                  ),
                  AppSpacing.vertical32(),
                  CustomTextField(
                    label: context.loc.name,
                    controller: bloc.nameController,
                    hint: context.loc.enterYourName,
                  ),
                  AppSpacing.vertical12(),
                  CustomTextField(
                    label: context.loc.email,
                    controller: bloc.emailController,
                    hint: context.loc.enterYourEmail,
                  ),
                  AppSpacing.vertical12(),
                  CustomTextField(
                    label: context.loc.phoneNumber,
                    controller: bloc.phoneController,
                    hint: context.loc.enterYourPhoneNumber,
                  ),
                  AppSpacing.vertical12(),
                  CustomTextField(
                    label: context.loc.gender,
                    controller: bloc.genderController,
                    hint: context.loc.enterYourGender,
                  ),
                  AppSpacing.vertical12(),
                  CustomTextField(
                    label: context.loc.password,
                    controller: bloc.passwordController,
                    hint: context.loc.enterYourPassword,
                  ),
                  AppSpacing.vertical32(),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return state is Loading<SignUpWithEmailAndPasswordUseCase>
                          ? const CircularProgressIndicator.adaptive()
                          : CustomButton(
                              onPressed: () {
                                bloc.add(
                                  const SignUpEvent.signUpWithEmailAndPassword(),
                                );
                              },
                              child: CustomText(
                                text: context.loc.signUp,
                                style: CustomTextStyle.mediumElementsBold,
                              ),
                            );
                    },
                  ),
                  AppSpacing.vertical12(),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return state is Loading<SignUpWithGoogleUseCase>
                          ? const CircularProgressIndicator.adaptive()
                          : CustomButton(
                              backgroundColor: currentTheme.neutral100,
                              onPressed: () {
                                bloc.add(const SignUpEvent.signUpWithGoogle());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: context.loc.signInWithGoogle,
                                    style: CustomTextStyle.mediumElementsBold,
                                  ),
                                  AppSpacing.horizontal16(),
                                  Assets.icons.google.svg(
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                  AppSpacing.vertical12(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: context.loc.alreadyHaveAccount,
                        style: CustomTextStyle.mediumElementsRegular,
                      ),
                      GestureDetector(
                        onTap: () => context.go(AppRoutes.signIn),
                        child: CustomText(
                          text: context.loc.signIn,
                          style: CustomTextStyle.mediumElementsBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
