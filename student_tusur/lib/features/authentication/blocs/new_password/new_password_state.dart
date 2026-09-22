part of 'new_password_bloc.dart';

@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState.initial() = _NewPasswordInitial;
  const factory NewPasswordState.loading() = NewPasswordLoading;
  const factory NewPasswordState.failure() = _NewPasswordFailure;
  const factory NewPasswordState.success() = _NewPasswordSuccess;
}
