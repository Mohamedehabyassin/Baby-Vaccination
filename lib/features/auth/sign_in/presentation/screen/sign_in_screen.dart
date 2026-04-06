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
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_email_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_google_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:go_router/go_router.dart';
import 'package:baby_vaccination/core/routing/app_routes.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInBloc bloc = context.read<SignInBloc>();
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is Error) {
          CustomToastMessage.show(
            context: context,
            message: state.failure.message,
            type: ToastType.error,
          );
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
                  SpaceHeight32(),
                  CustomText(
                    text: context.loc.signIn,
                    style: CustomTextStyle.h1Bold,
                  ),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 200.h,
                        width: 200.w,
                        child: FlareActor(
                          Assets.flare.teddyTest,
                          animation: bloc.animationType,
                        ),
                      );
                    },
                  ),
                  SpaceHeight32(),
                  CustomTextField(
                    label: context.loc.email,
                    controller: bloc.emailController,
                    hint: context.loc.enterYourEmail,
                  ),
                  SpaceHeight12(),
                  CustomTextField(
                    label: context.loc.password,
                    controller: bloc.passwordController,
                    hint: context.loc.enterYourPassword,
                  ),
                  SpaceHeight32(),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      return state is Loading<SignInWithEmailAndPasswordUseCase>
                          ? const CircularProgressIndicator.adaptive()
                          : CustomButton(
                              onPressed: () {
                                bloc.add(
                                  const SignInEvent.signInWithEmailAndPassword(),
                                );
                              },
                              child: CustomText(
                                text: context.loc.signIn,
                                style: CustomTextStyle.mediumElementsBold,
                              ),
                            );
                    },
                  ),
                  SpaceHeight12(),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      return state is Loading<SignInWithGoogleUseCase>
                          ? const CircularProgressIndicator.adaptive()
                          : CustomButton(
                              backgroundColor: currentTheme.neutral100,
                              onPressed: () {
                                bloc.add(const SignInEvent.signInWithGoogle());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: context.loc.signInWithGoogle,
                                    style: CustomTextStyle.mediumElementsBold,
                                  ),
                                  SpaceWidth16(),
                                  Assets.icons.google.svg(
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                  SpaceHeight12(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: context.loc.dontHaveAccount,
                        style: CustomTextStyle.mediumElementsRegular,
                      ),
                      GestureDetector(
                        onTap: () => context.go(AppRoutes.signUp),
                        child: CustomText(
                          text: context.loc.signUp,
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
