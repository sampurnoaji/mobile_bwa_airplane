import 'package:bloc/bloc.dart';
import 'package:bwa_airplane/models/destination_model.dart';
import 'package:bwa_airplane/services/destination_service.dart';
import 'package:equatable/equatable.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async {
    emit(DestinationLoading());
    try {
      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
