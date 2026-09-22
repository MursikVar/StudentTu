// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {

 String get email; String get password;
/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventCopyWith<LoginEvent> get copyWith => _$LoginEventCopyWithImpl<LoginEvent>(this as LoginEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEventCopyWith<$Res>  {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) _then) = _$LoginEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._self, this._then);

  final LoginEvent _self;
  final $Res Function(LoginEvent) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(LoginEvent.submitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case _LoginSubmitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _LoginSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginSubmitted() when submitted != null:
return submitted(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  submitted,}) {final _that = this;
switch (_that) {
case _LoginSubmitted():
return submitted(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  submitted,}) {final _that = this;
switch (_that) {
case _LoginSubmitted() when submitted != null:
return submitted(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _LoginSubmitted implements LoginEvent {
  const _LoginSubmitted({required this.email, required this.password});
  

@override final  String email;
@override final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginSubmittedCopyWith<_LoginSubmitted> get copyWith => __$LoginSubmittedCopyWithImpl<_LoginSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSubmitted&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginEvent.submitted(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginSubmittedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$LoginSubmittedCopyWith(_LoginSubmitted value, $Res Function(_LoginSubmitted) _then) = __$LoginSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginSubmittedCopyWithImpl<$Res>
    implements _$LoginSubmittedCopyWith<$Res> {
  __$LoginSubmittedCopyWithImpl(this._self, this._then);

  final _LoginSubmitted _self;
  final $Res Function(_LoginSubmitted) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginSubmitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginInitial value)?  initial,TResult Function( _LoginAuthenticating value)?  authenticating,TResult Function( _LoginSuccess value)?  success,TResult Function( _LoginCodeSent value)?  codeSent,TResult Function( _LoginFail value)?  fail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial(_that);case _LoginAuthenticating() when authenticating != null:
return authenticating(_that);case _LoginSuccess() when success != null:
return success(_that);case _LoginCodeSent() when codeSent != null:
return codeSent(_that);case _LoginFail() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginInitial value)  initial,required TResult Function( _LoginAuthenticating value)  authenticating,required TResult Function( _LoginSuccess value)  success,required TResult Function( _LoginCodeSent value)  codeSent,required TResult Function( _LoginFail value)  fail,}){
final _that = this;
switch (_that) {
case _LoginInitial():
return initial(_that);case _LoginAuthenticating():
return authenticating(_that);case _LoginSuccess():
return success(_that);case _LoginCodeSent():
return codeSent(_that);case _LoginFail():
return fail(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginInitial value)?  initial,TResult? Function( _LoginAuthenticating value)?  authenticating,TResult? Function( _LoginSuccess value)?  success,TResult? Function( _LoginCodeSent value)?  codeSent,TResult? Function( _LoginFail value)?  fail,}){
final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial(_that);case _LoginAuthenticating() when authenticating != null:
return authenticating(_that);case _LoginSuccess() when success != null:
return success(_that);case _LoginCodeSent() when codeSent != null:
return codeSent(_that);case _LoginFail() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  authenticating,TResult Function()?  success,TResult Function( String email,  String password)?  codeSent,TResult Function( String message)?  fail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial();case _LoginAuthenticating() when authenticating != null:
return authenticating();case _LoginSuccess() when success != null:
return success();case _LoginCodeSent() when codeSent != null:
return codeSent(_that.email,_that.password);case _LoginFail() when fail != null:
return fail(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  authenticating,required TResult Function()  success,required TResult Function( String email,  String password)  codeSent,required TResult Function( String message)  fail,}) {final _that = this;
switch (_that) {
case _LoginInitial():
return initial();case _LoginAuthenticating():
return authenticating();case _LoginSuccess():
return success();case _LoginCodeSent():
return codeSent(_that.email,_that.password);case _LoginFail():
return fail(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  authenticating,TResult? Function()?  success,TResult? Function( String email,  String password)?  codeSent,TResult? Function( String message)?  fail,}) {final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial();case _LoginAuthenticating() when authenticating != null:
return authenticating();case _LoginSuccess() when success != null:
return success();case _LoginCodeSent() when codeSent != null:
return codeSent(_that.email,_that.password);case _LoginFail() when fail != null:
return fail(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoginInitial extends LoginState {
  const _LoginInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class _LoginAuthenticating extends LoginState {
  const _LoginAuthenticating(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginAuthenticating);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.authenticating()';
}


}




/// @nodoc


class _LoginSuccess extends LoginState {
  const _LoginSuccess(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.success()';
}


}




/// @nodoc


class _LoginCodeSent extends LoginState {
  const _LoginCodeSent(this.email, this.password): super._();
  

 final  String email;
 final  String password;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCodeSentCopyWith<_LoginCodeSent> get copyWith => __$LoginCodeSentCopyWithImpl<_LoginCodeSent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginCodeSent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginState.codeSent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginCodeSentCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginCodeSentCopyWith(_LoginCodeSent value, $Res Function(_LoginCodeSent) _then) = __$LoginCodeSentCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginCodeSentCopyWithImpl<$Res>
    implements _$LoginCodeSentCopyWith<$Res> {
  __$LoginCodeSentCopyWithImpl(this._self, this._then);

  final _LoginCodeSent _self;
  final $Res Function(_LoginCodeSent) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginCodeSent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginFail extends LoginState {
  const _LoginFail({required this.message}): super._();
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFailCopyWith<_LoginFail> get copyWith => __$LoginFailCopyWithImpl<_LoginFail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFail&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.fail(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoginFailCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginFailCopyWith(_LoginFail value, $Res Function(_LoginFail) _then) = __$LoginFailCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LoginFailCopyWithImpl<$Res>
    implements _$LoginFailCopyWith<$Res> {
  __$LoginFailCopyWithImpl(this._self, this._then);

  final _LoginFail _self;
  final $Res Function(_LoginFail) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LoginFail(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
