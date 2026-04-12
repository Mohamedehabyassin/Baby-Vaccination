import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/services/firebase/firebase_auth_manger.dart';
import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/add_baby/domain/repository/add_baby_repository.dart';
import 'package:baby_vaccination/features/add_baby/presentation/bloc/add_baby_event.dart';
import 'package:baby_vaccination/features/add_baby/presentation/bloc/add_baby_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddBabyBloc extends Bloc<AddBabyEvent, AddBabyState> {
  AddBabyBloc(this._repository) : super(const AddBabyState.initial()) {
    on<AddBabyEvent>((event, emit) async {
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

  final AddBabyRepository _repository;

  final TextEditingController nameController = TextEditingController();
  DateTime? selectedDate;
  String? selectedGender;
  String? selectedBloodType;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> _onAddBaby(Emitter<AddBabyState> emit) async {
    if (formKey.currentState?.validate() ?? false) {
      if (selectedDate == null ||
          selectedGender == null ||
          selectedBloodType == null) {
        emit(AddBabyState.error(
            Failure(message: 'Please fill all the details')));
        return;
      }

      final userId = GetIt.I<FirebaseAuthManger>().currentUser?.uid;
      if (userId == null) {
        emit(AddBabyState.error(Failure(message: 'Unauthenticated')));
        return;
      }

      final baby = BabyEntity(
        fullName: nameController.text,
        dateOfBirth: selectedDate!,
        gender: selectedGender!,
        bloodType: selectedBloodType!,
        userId: userId,
      );

      emit(const AddBabyState.loading());
      final result = await _repository.addBaby(baby);
      result.fold(
        (failure) => emit(AddBabyState.error(failure)),
        (_) => emit(const AddBabyState.success()),
      );
    }
  }

  Future<void> _onUpdateBaby(Emitter<AddBabyState> emit) async {
    final userId = GetIt.I<FirebaseAuthManger>().currentUser?.uid;
    if (userId == null) {
      emit(AddBabyState.error(Failure(message: 'Unauthenticated')));
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

    emit(const AddBabyState.loading());
    final result = await _repository.updateBaby(baby);
    result.fold(
      (failure) => emit(AddBabyState.error(failure)),
      (_) => emit(const AddBabyState.success()),
    );
  }

  void _onUpdateDate(DateTime date, Emitter<AddBabyState> emit) {
    selectedDate = date;
    emit(const AddBabyState.formUpdated());
  }

  void _onUpdateGender(String gender, Emitter<AddBabyState> emit) {
    selectedGender = gender;
    emit(const AddBabyState.formUpdated());
  }

  void _onUpdateBloodType(String bloodType, Emitter<AddBabyState> emit) {
    selectedBloodType = bloodType;
    emit(const AddBabyState.formUpdated());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
