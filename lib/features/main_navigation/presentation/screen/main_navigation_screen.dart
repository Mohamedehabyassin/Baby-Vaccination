import 'package:baby_vaccination/core/di/injection.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/features/babies/presentation/bloc/babies_bloc.dart';
import 'package:baby_vaccination/features/facilities/presentation/bloc/facilities_bloc.dart';
import 'package:baby_vaccination/features/home/presentation/bloc/home_bloc.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/bloc/navigation_bloc.dart';
import 'package:baby_vaccination/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MainNavigationScreen build');
    final NavigationBloc bloc = context.read<NavigationBloc>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeBloc>()),
        BlocProvider(create: (_) => getIt<BabiesBloc>()),
        BlocProvider(create: (_) => getIt<FacilitiesBloc>()),
        BlocProvider(create: (_) => getIt<ProfileBloc>()),
      ],
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          final int currentIndex = state.index;
          return Scaffold(
            body: bloc.screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: currentTheme.neutral200,
              selectedItemColor: currentTheme.primary500,
              unselectedItemColor: currentTheme.neutral500,
              selectedLabelStyle: CustomTextStyle.mediumElementsBold,
              unselectedLabelStyle: CustomTextStyle.mediumElementsMedium,
              enableFeedback: true,
              onTap: (index) {
                bloc.add(ChangeTabEvent(index));
              },
              items: [
                _buildNavigationItem(
                  title: context.loc.home,
                  icon: Icons.home_outlined,
                ),
                _buildNavigationItem(
                  title: context.loc.babies,
                  icon: Icons.child_care_outlined,
                ),
                _buildNavigationItem(
                  title: context.loc.facilities,
                  icon: Icons.local_hospital_outlined,
                ),
                _buildNavigationItem(
                  title: context.loc.profile,
                  icon: Icons.person_outline,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

BottomNavigationBarItem _buildNavigationItem({
  required String title,
  required IconData icon,
}) => BottomNavigationBarItem(icon: Icon(icon), label: title);
