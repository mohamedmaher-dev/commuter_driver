part of 'commutes_bloc.dart';

@freezed
class CommutesEvent with _$CommutesEvent {
  const factory CommutesEvent.started() = _Started;
  const factory CommutesEvent.deleteCommute({required String commuteId}) =
      DeleteCommute;
}
