import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'babies_event.dart';
part 'babies_state.dart';
part 'babies_bloc.freezed.dart';

@injectable
class BabiesBloc extends Bloc<BabiesEvent, BabiesState> {
  BabiesBloc() : super(_Initial()) {
    on<BabiesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
