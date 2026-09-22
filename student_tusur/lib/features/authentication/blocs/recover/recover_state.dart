part of 'recover_bloc.dart';

@freezed
class RecoverState with _$RecoverState {
  const factory RecoverState.initial() = _RecoverInitial;
  const factory RecoverState.loading() = RecoverLoading;
  const factory RecoverState.failure() = _RecoverFailure;
  const factory RecoverState.success(String email) = _RecoverSuccess;
}
