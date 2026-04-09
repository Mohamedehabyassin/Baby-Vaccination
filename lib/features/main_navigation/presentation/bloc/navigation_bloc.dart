import 'package:baby_vaccination/features/babies/presentation/screen/babies_screen.dart';
import 'package:baby_vaccination/features/facilities/presentation/screen/facilities_screen.dart';
import 'package:baby_vaccination/features/home/presentation/screen/home_screen.dart';
import 'package:baby_vaccination/features/profile/presentation/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

@injectable
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial()) {
    on<ChangeTabEvent>((event, emit) {
      emit(NavigationState.tabChanged(index: event.index));
    });
  }

  final List<Widget> screens = const [
    HomeScreen(),
    BabiesScreen(),
    FacilitiesScreen(),
    ProfileScreen(),
  ];
}
