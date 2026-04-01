import 'package:baby_vaccination/core/domain/extensions/context_extension.dart';
import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/core/presentation/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/presentation/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/presentation/widgets/app_bar/custom_app_bar.dart';
import 'package:baby_vaccination/core/presentation/widgets/button/custom_button.dart';
import 'package:baby_vaccination/core/presentation/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/presentation/widgets/text_field/custom_text_field.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInBloc bloc = context.read<SignInBloc>();
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          Container(
            height: 280,
            width: 280,
            child: CircleAvatar(
              child: ClipOval(
                child: new FlareActor(
                  Assets.flare.teddyTest,
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: bloc.animationType,
                ),
              ),
              backgroundColor: Colors.white,
            ),
          ),
          SpaceHeight32(),
          CustomTextField(label: context.loc.email),
          SpaceHeight12(),
          CustomTextField(label: context.loc.password),
          CustomButton(
            onPressed: () {},
            child: CustomText(
              text: context.loc.signIn,
              style: CustomTextStyle.secondaryMedium,
            ),
          ),
        ],
      ),
    );
  }
}
