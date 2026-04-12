import 'package:baby_vaccination/core/routing/app_routes.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/core/widgets/app_bar/custom_app_bar.dart';
import 'package:baby_vaccination/core/widgets/button/custom_button.dart';
import 'package:baby_vaccination/core/widgets/error/custom_error_widget.dart';
import 'package:baby_vaccination/core/widgets/loading_widget.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/features/babies/presentation/bloc/babies_bloc.dart';
import 'package:baby_vaccination/features/babies/presentation/widgets/baby_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BabiesScreen extends StatefulWidget {
  const BabiesScreen({super.key});

  @override
  State<BabiesScreen> createState() => _BabiesScreenState();
}

class _BabiesScreenState extends State<BabiesScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BabiesBloc>().add(const BabiesEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('BabiesScreen build');
    return Scaffold(
      appBar: CustomAppBar(
        title: context.loc.babies,
        useBack: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: currentTheme.primary500),
            onPressed: () => context.go(AppRoutes.manageBaby),
          ),
        ],
      ),
      body: BlocBuilder<BabiesBloc, BabiesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const LoadingWidget(),
            error: (failure) => CustomErrorWidget(
              failure: failure,
              retry: () =>
                  context.read<BabiesBloc>().add(const BabiesEvent.started()),
            ),
            loaded: (babies) {
              if (babies.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: context.loc.noBabiesFound,
                        style: CustomTextStyle.mediumElementsBold,
                      ),
                      AppSpacing.vertical16(),
                      CustomButton(
                        width: 200.w,
                        onPressed: () => context.push(AppRoutes.manageBaby),
                        child: CustomText(
                          text: context.loc.addChild,
                          style: CustomTextStyle.mediumElementsBold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.all(16.w),
                itemCount: babies.length,
                itemBuilder: (context, index) {
                  final baby = babies[index];
                  return BabyItemWidget(
                    baby: baby,
                    onTap: () {
                      // Navigate to details if needed, for now we can use the existing details route
                      // context.push(AppRoutes.babyDetails, extra: baby);
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
