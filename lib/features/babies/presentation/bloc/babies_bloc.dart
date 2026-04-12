import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/babies/domain/use_cases/get_babies_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'babies_event.dart';
part 'babies_state.dart';
part 'babies_bloc.freezed.dart';

@injectable
class BabiesBloc extends Bloc<BabiesEvent, BabiesState> {
  BabiesBloc(this._getBabiesUseCase) : super(const _Initial()) {
    on<BabiesEvent>((event, emit) async {
      await event.when(started: () => _onLoadBabies(emit));
    });
  }

  final GetBabiesUseCase _getBabiesUseCase;

  Future<void> _onLoadBabies(Emitter<BabiesState> emit) async {
    emit(const BabiesState.loading());
    final result = await _getBabiesUseCase();
    result.fold(
      (failure) => emit(BabiesState.error(failure)),
      (babies) => emit(BabiesState.loaded(babies)),
    );
  }
}
