import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/baby/baby_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'babies_event.dart';
part 'babies_state.dart';
part 'babies_bloc.freezed.dart';

@injectable
class BabiesBloc extends Bloc<BabiesEvent, BabiesState> {
  BabiesBloc() : super(const _Initial()) {
    on<BabiesEvent>((event, emit) async {
      event.whenOrNull(started: () => _onLoadBabies(emit));
    });
  }

  Future<void> _onLoadBabies(Emitter<BabiesState> emit) async {
    emit(const BabiesState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const BabiesState.loaded([]));
  }
}
