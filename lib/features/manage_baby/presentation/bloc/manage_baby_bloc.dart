import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/services/firebase/firebase_auth_manger.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/manage_baby/domain/repository/manage_baby_repository.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_event.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class ManageBabyBloc extends Bloc<ManageBabyEvent, ManageBabyState> {
  ManageBabyBloc(this._repository) : super(const ManageBabyState.initial()) {
    on<ManageBabyEvent>((event, emit) async {
      await event.map(
        addBaby: (_) async => await _onAddBaby(emit),
        updateBaby: (_) async => await _onUpdateBaby(emit),
        updateDate: (e) {
          _onUpdateDate(e.date, emit);
        },
        updateGender: (e) {
          _onUpdateGender(e.gender, emit);
        },
        updateBloodType: (e) {
          _onUpdateBloodType(e.bloodType, emit);
        },
      );
    });
  }

  final ManageBabyRepository _repository;

  final TextEditingController nameController = TextEditingController();
  DateTime? selectedDate;
  GenderType? selectedGender;
  BloodType? selectedBloodType;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> _onAddBaby(Emitter<ManageBabyState> emit) async {
    if (formKey.currentState?.validate() ?? false) {
      if (selectedDate == null ||
          selectedGender == null ||
          selectedBloodType == null) {
        emit(
          ManageBabyState.error(
            Failure(message: 'Please fill all the details'),
          ),
        );
        return;
      }

      final userId = GetIt.I<FirebaseAuthManger>().currentUser?.uid;
      if (userId == null) {
        emit(ManageBabyState.error(Failure(message: 'Unauthenticated')));
        return;
      }

      final baby = BabyEntity(
        fullName: nameController.text,
        dateOfBirth: selectedDate!,
        gender: selectedGender!,
        bloodType: selectedBloodType!,
        userId: userId,
      );

      emit(const ManageBabyState.loading());
      final result = await _repository.addBaby(baby);
      result.fold(
        (failure) => emit(ManageBabyState.error(failure)),
        (_) => emit(const ManageBabyState.success()),
      );
    }
  }

  Future<void> _onUpdateBaby(Emitter<ManageBabyState> emit) async {
    final userId = GetIt.I<FirebaseAuthManger>().currentUser?.uid;
    if (userId == null) {
      emit(ManageBabyState.error(Failure(message: 'Unauthenticated')));
      return;
    }

    if (selectedDate == null ||
        selectedGender == null ||
        selectedBloodType == null) {
      emit(ManageBabyState.error(Failure(message: 'Please fill all the details')));
      return;
    }

    final baby = BabyEntity(
      id: "some_id", // In actual update, id needs to be passed securely
      fullName: nameController.text,
      dateOfBirth: selectedDate!,
      gender: selectedGender!,
      bloodType: selectedBloodType!,
      userId: userId,
    );

    emit(const ManageBabyState.loading());
    final result = await _repository.updateBaby(baby);
    result.fold(
      (failure) => emit(ManageBabyState.error(failure)),
      (_) => emit(const ManageBabyState.success()),
    );
  }

  void _onUpdateDate(DateTime date, Emitter<ManageBabyState> emit) {
    selectedDate = date;
    emit(const ManageBabyState.formUpdated());
  }

  void _onUpdateGender(GenderType gender, Emitter<ManageBabyState> emit) {
    selectedGender = gender;
    emit(const ManageBabyState.formUpdated());
  }

  void _onUpdateBloodType(BloodType bloodType, Emitter<ManageBabyState> emit) {
    selectedBloodType = bloodType;
    emit(const ManageBabyState.formUpdated());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
