import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

  final GlobalKey<CurvedNavigationBarState> bottomNavigationKey =
      GlobalKey<CurvedNavigationBarState>();
}
