// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_totp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailTotpEvent {

 String get email; String get password;
/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailTotpEventCopyWith<EmailTotpEvent> get copyWith => _$EmailTotpEventCopyWithImpl<EmailTotpEvent>(this as EmailTotpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailTotpEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'EmailTotpEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $EmailTotpEventCopyWith<$Res>  {
  factory $EmailTotpEventCopyWith(EmailTotpEvent value, $Res Function(EmailTotpEvent) _then) = _$EmailTotpEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$EmailTotpEventCopyWithImpl<$Res>
    implements $EmailTotpEventCopyWith<$Res> {
  _$EmailTotpEventCopyWithImpl(this._self, this._then);

  final EmailTotpEvent _self;
  final $Res Function(EmailTotpEvent) _then;

/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailTotpEvent].
extension EmailTotpEventPatterns on EmailTotpEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmailTotpSendCode value)?  sendCode,TResult Function( _EmailTotpVerifyCode value)?  verifyCode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailTotpSendCode() when sendCode != null:
return sendCode(_that);case _EmailTotpVerifyCode() when verifyCode != null:
return verifyCode(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmailTotpSendCode value)  sendCode,required TResult Function( _EmailTotpVerifyCode value)  verifyCode,}){
final _that = this;
switch (_that) {
case _EmailTotpSendCode():
return sendCode(_that);case _EmailTotpVerifyCode():
return verifyCode(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmailTotpSendCode value)?  sendCode,TResult? Function( _EmailTotpVerifyCode value)?  verifyCode,}){
final _that = this;
switch (_that) {
case _EmailTotpSendCode() when sendCode != null:
return sendCode(_that);case _EmailTotpVerifyCode() when verifyCode != null:
return verifyCode(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  sendCode,TResult Function( String email,  String password,  String code)?  verifyCode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailTotpSendCode() when sendCode != null:
return sendCode(_that.email,_that.password);case _EmailTotpVerifyCode() when verifyCode != null:
return verifyCode(_that.email,_that.password,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  sendCode,required TResult Function( String email,  String password,  String code)  verifyCode,}) {final _that = this;
switch (_that) {
case _EmailTotpSendCode():
return sendCode(_that.email,_that.password);case _EmailTotpVerifyCode():
return verifyCode(_that.email,_that.password,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  sendCode,TResult? Function( String email,  String password,  String code)?  verifyCode,}) {final _that = this;
switch (_that) {
case _EmailTotpSendCode() when sendCode != null:
return sendCode(_that.email,_that.password);case _EmailTotpVerifyCode() when verifyCode != null:
return verifyCode(_that.email,_that.password,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _EmailTotpSendCode implements EmailTotpEvent {
  const _EmailTotpSendCode(this.email, this.password);
  

@override final  String email;
@override final  String password;

/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailTotpSendCodeCopyWith<_EmailTotpSendCode> get copyWith => __$EmailTotpSendCodeCopyWithImpl<_EmailTotpSendCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpSendCode&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'EmailTotpEvent.sendCode(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$EmailTotpSendCodeCopyWith<$Res> implements $EmailTotpEventCopyWith<$Res> {
  factory _$EmailTotpSendCodeCopyWith(_EmailTotpSendCode value, $Res Function(_EmailTotpSendCode) _then) = __$EmailTotpSendCodeCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$EmailTotpSendCodeCopyWithImpl<$Res>
    implements _$EmailTotpSendCodeCopyWith<$Res> {
  __$EmailTotpSendCodeCopyWithImpl(this._self, this._then);

  final _EmailTotpSendCode _self;
  final $Res Function(_EmailTotpSendCode) _then;

/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_EmailTotpSendCode(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmailTotpVerifyCode implements EmailTotpEvent {
  const _EmailTotpVerifyCode(this.email, this.password, this.code);
  

@override final  String email;
@override final  String password;
 final  String code;

/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailTotpVerifyCodeCopyWith<_EmailTotpVerifyCode> get copyWith => __$EmailTotpVerifyCodeCopyWithImpl<_EmailTotpVerifyCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpVerifyCode&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,code);

@override
String toString() {
  return 'EmailTotpEvent.verifyCode(email: $email, password: $password, code: $code)';
}


}

/// @nodoc
abstract mixin class _$EmailTotpVerifyCodeCopyWith<$Res> implements $EmailTotpEventCopyWith<$Res> {
  factory _$EmailTotpVerifyCodeCopyWith(_EmailTotpVerifyCode value, $Res Function(_EmailTotpVerifyCode) _then) = __$EmailTotpVerifyCodeCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String code
});




}
/// @nodoc
class __$EmailTotpVerifyCodeCopyWithImpl<$Res>
    implements _$EmailTotpVerifyCodeCopyWith<$Res> {
  __$EmailTotpVerifyCodeCopyWithImpl(this._self, this._then);

  final _EmailTotpVerifyCode _self;
  final $Res Function(_EmailTotpVerifyCode) _then;

/// Create a copy of EmailTotpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? code = null,}) {
  return _then(_EmailTotpVerifyCode(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EmailTotpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailTotpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailTotpState()';
}


}

/// @nodoc
class $EmailTotpStateCopyWith<$Res>  {
$EmailTotpStateCopyWith(EmailTotpState _, $Res Function(EmailTotpState) __);
}


/// Adds pattern-matching-related methods to [EmailTotpState].
extension EmailTotpStatePatterns on EmailTotpState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmailTotpInitial value)?  initial,TResult Function( _EmailTotpLoading value)?  loading,TResult Function( _EmailTotpCodeSent value)?  codeSent,TResult Function( _EmailTotpSuccess value)?  success,TResult Function( _EmailTotpFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailTotpInitial() when initial != null:
return initial(_that);case _EmailTotpLoading() when loading != null:
return loading(_that);case _EmailTotpCodeSent() when codeSent != null:
return codeSent(_that);case _EmailTotpSuccess() when success != null:
return success(_that);case _EmailTotpFailure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmailTotpInitial value)  initial,required TResult Function( _EmailTotpLoading value)  loading,required TResult Function( _EmailTotpCodeSent value)  codeSent,required TResult Function( _EmailTotpSuccess value)  success,required TResult Function( _EmailTotpFailure value)  failure,}){
final _that = this;
switch (_that) {
case _EmailTotpInitial():
return initial(_that);case _EmailTotpLoading():
return loading(_that);case _EmailTotpCodeSent():
return codeSent(_that);case _EmailTotpSuccess():
return success(_that);case _EmailTotpFailure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmailTotpInitial value)?  initial,TResult? Function( _EmailTotpLoading value)?  loading,TResult? Function( _EmailTotpCodeSent value)?  codeSent,TResult? Function( _EmailTotpSuccess value)?  success,TResult? Function( _EmailTotpFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _EmailTotpInitial() when initial != null:
return initial(_that);case _EmailTotpLoading() when loading != null:
return loading(_that);case _EmailTotpCodeSent() when codeSent != null:
return codeSent(_that);case _EmailTotpSuccess() when success != null:
return success(_that);case _EmailTotpFailure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  codeSent,TResult Function()?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailTotpInitial() when initial != null:
return initial();case _EmailTotpLoading() when loading != null:
return loading();case _EmailTotpCodeSent() when codeSent != null:
return codeSent();case _EmailTotpSuccess() when success != null:
return success();case _EmailTotpFailure() when failure != null:
return failure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  codeSent,required TResult Function()  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case _EmailTotpInitial():
return initial();case _EmailTotpLoading():
return loading();case _EmailTotpCodeSent():
return codeSent();case _EmailTotpSuccess():
return success();case _EmailTotpFailure():
return failure(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  codeSent,TResult? Function()?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case _EmailTotpInitial() when initial != null:
return initial();case _EmailTotpLoading() when loading != null:
return loading();case _EmailTotpCodeSent() when codeSent != null:
return codeSent();case _EmailTotpSuccess() when success != null:
return success();case _EmailTotpFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EmailTotpInitial implements EmailTotpState {
  const _EmailTotpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailTotpState.initial()';
}


}




/// @nodoc


class _EmailTotpLoading implements EmailTotpState {
  const _EmailTotpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailTotpState.loading()';
}


}




/// @nodoc


class _EmailTotpCodeSent implements EmailTotpState {
  const _EmailTotpCodeSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpCodeSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailTotpState.codeSent()';
}


}




/// @nodoc


class _EmailTotpSuccess implements EmailTotpState {
  const _EmailTotpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailTotpState.success()';
}


}




/// @nodoc


class _EmailTotpFailure implements EmailTotpState {
  const _EmailTotpFailure(this.error);
  

 final  String error;

/// Create a copy of EmailTotpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailTotpFailureCopyWith<_EmailTotpFailure> get copyWith => __$EmailTotpFailureCopyWithImpl<_EmailTotpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EmailTotpState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$EmailTotpFailureCopyWith<$Res> implements $EmailTotpStateCopyWith<$Res> {
  factory _$EmailTotpFailureCopyWith(_EmailTotpFailure value, $Res Function(_EmailTotpFailure) _then) = __$EmailTotpFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$EmailTotpFailureCopyWithImpl<$Res>
    implements _$EmailTotpFailureCopyWith<$Res> {
  __$EmailTotpFailureCopyWithImpl(this._self, this._then);

  final _EmailTotpFailure _self;
  final $Res Function(_EmailTotpFailure) _then;

/// Create a copy of EmailTotpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_EmailTotpFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
