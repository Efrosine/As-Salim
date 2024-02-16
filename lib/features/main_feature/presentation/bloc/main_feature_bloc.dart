import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_feature_event.dart';
part 'main_feature_state.dart';

class MainFeatureBloc extends Bloc<MainFeatureEvent, MainFeatureState> {
  MainFeatureBloc() : super(MainFeatureInitial()) {
    on<MainFeatureEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
