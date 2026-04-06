import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/features/babies/presentation/screen/babies_screen.dart';
import 'package:baby_vaccination/features/facilities/presentation/screen/facilities_screen.dart';
import 'package:baby_vaccination/features/home/presentation/screen/home_screen.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/bloc/navigation_bloc.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/widgets/navigation_item_widget.dart';
import 'package:baby_vaccination/features/profile/presentation/screen/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> screens = [
      HomeScreen(),
      BabiesScreen(),
      FacilitiesScreen(),
      ProfileScreen(),
    ];

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        final int currentIndex = state.index;
        return Scaffold(
          body: IndexedStack(index: currentIndex, children: screens),

          bottomNavigationBar: CurvedNavigationBar(
            key: context.read<NavigationBloc>().bottomNavigationKey,
            index: currentIndex,
            backgroundColor: Colors.transparent,
            color: currentTheme.tertiary400,
            onTap: (index) {
              context.read<NavigationBloc>().add(
                NavigationEvent.changeTab(index),
              );
            },

            items: [
              NavigationItemWidget(
                title: context.loc.home,
                icon: Icons.home_outlined,
                isSelected: currentIndex == 0,
              ),
              NavigationItemWidget(
                title: context.loc.babies,
                icon: Icons.child_care_outlined,
                isSelected: currentIndex == 1,
              ),
              NavigationItemWidget(
                title: context.loc.facilities,
                icon: Icons.local_hospital_outlined,
                isSelected: currentIndex == 2,
              ),
              NavigationItemWidget(
                title: context.loc.profile,
                icon: Icons.person_outline,
                isSelected: currentIndex == 3,
              ),
            ],
          ),
        );
      },
    );
  }
}
