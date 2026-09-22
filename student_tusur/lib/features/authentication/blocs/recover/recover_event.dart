part of 'recover_bloc.dart';

@freezed
abstract class RecoverEvent with _$RecoverEvent {
  const factory RecoverEvent.submitted(String email) = _RecoverSubmitted;
}
