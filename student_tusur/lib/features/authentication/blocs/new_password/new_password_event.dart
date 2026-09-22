part of 'new_password_bloc.dart';

@freezed
abstract class NewPasswordEvent with _$NewPasswordEvent {
  const factory NewPasswordEvent.submitted(String link, String password) =
      _NewPasswordSubmitted;
}
