import 'package:baby_vaccination/features/baby_details/domain/repository/baby_details_repository.dart';
import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_event.dart';
import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_state.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BabyDetailsBloc extends Bloc<BabyDetailsEvent, BabyDetailsState> {
  BabyDetailsBloc(this._repository) : super(const BabyDetailsState.initial()) {
    on<GetBabiesEvent>(_onGetBabies);
  }

  final BabyDetailsRepository _repository;

  Future<void> _onGetBabies(
    GetBabiesEvent event,
    Emitter<BabyDetailsState> emit,
  ) async {
    emit(const BabyDetailsState.loading());
    final result = await _repository.getBabies();
    result.fold(
      (failure) => emit(BabyDetailsState.error(failure)),
      (success) =>
          emit(BabyDetailsState.loaded(success.data as List<BabyEntity>)),
    );
  }
}
