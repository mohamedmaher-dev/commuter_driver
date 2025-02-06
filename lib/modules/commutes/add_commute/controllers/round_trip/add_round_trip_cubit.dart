import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_round_trip_state.dart';
part 'add_round_trip_cubit.freezed.dart';

class AddRoundTripCubit extends Cubit<AddRoundTripState> {
  bool isRoundTrip = false;
  DateTime? pickupStartTime;
  DateTime? pickupEndTime;
  DateTime? dropOffStartTime;
  DateTime? dropOffEndTime;
  AddRoundTripCubit() : super(const AddRoundTripState.initial());
}
