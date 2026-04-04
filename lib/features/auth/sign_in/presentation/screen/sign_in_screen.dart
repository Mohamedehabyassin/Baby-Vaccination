import 'package:baby_vaccination/core/domain/extensions/context_extension.dart';
import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/presentation/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/presentation/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/presentation/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/presentation/widgets/app_bar/custom_app_bar.dart';
import 'package:baby_vaccination/core/presentation/widgets/button/custom_button.dart';
import 'package:baby_vaccination/core/presentation/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/presentation/widgets/text_field/custom_text_field.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInSccreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInBloc bloc = context.read<SignInBloc>();
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: currentTheme.neutral100,
      body: Padding(
        padding: EdgeInsets.all(Dimensions.padding16),
        child: Column(
          children: <Widget>[
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return SizedBox(
                  height: 200.h,
                  width: 200.w,
                  child: CircleAvatar(
                    child: new FlareActor(
                      Assets.flare.teddyTest,
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: bloc.animationType,
                    ),
                    backgroundColor: currentTheme.neutral100,
                  ),
                );
              },
            ),
            SpaceHeight32(),
            CustomTextField(
              label: context.loc.email,
              hint: context.loc.enterYourEmail,
            ),
            SpaceHeight12(),
            CustomTextField(
              label: context.loc.password,
              hint: context.loc.enterYourPassword,
            ),
            CustomButton(
              onPressed: () {
                bloc.add(const SignInEvent.signInWithEmailAndPassword());
              },
              child: CustomText(
                text: context.loc.signIn,
                style: CustomTextStyle.secondaryMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
