// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecoverEvent {

 String get email;
/// Create a copy of RecoverEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecoverEventCopyWith<RecoverEvent> get copyWith => _$RecoverEventCopyWithImpl<RecoverEvent>(this as RecoverEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecoverEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'RecoverEvent(email: $email)';
}


}

/// @nodoc
abstract mixin class $RecoverEventCopyWith<$Res>  {
  factory $RecoverEventCopyWith(RecoverEvent value, $Res Function(RecoverEvent) _then) = _$RecoverEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$RecoverEventCopyWithImpl<$Res>
    implements $RecoverEventCopyWith<$Res> {
  _$RecoverEventCopyWithImpl(this._self, this._then);

  final RecoverEvent _self;
  final $Res Function(RecoverEvent) _then;

/// Create a copy of RecoverEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(RecoverEvent.submitted(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecoverEvent].
extension RecoverEventPatterns on RecoverEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RecoverSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecoverSubmitted() when submitted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RecoverSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case _RecoverSubmitted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RecoverSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _RecoverSubmitted() when submitted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecoverSubmitted() when submitted != null:
return submitted(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  submitted,}) {final _that = this;
switch (_that) {
case _RecoverSubmitted():
return submitted(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  submitted,}) {final _that = this;
switch (_that) {
case _RecoverSubmitted() when submitted != null:
return submitted(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _RecoverSubmitted implements RecoverEvent {
  const _RecoverSubmitted(this.email);
  

@override final  String email;

/// Create a copy of RecoverEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecoverSubmittedCopyWith<_RecoverSubmitted> get copyWith => __$RecoverSubmittedCopyWithImpl<_RecoverSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecoverSubmitted&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'RecoverEvent.submitted(email: $email)';
}


}

/// @nodoc
abstract mixin class _$RecoverSubmittedCopyWith<$Res> implements $RecoverEventCopyWith<$Res> {
  factory _$RecoverSubmittedCopyWith(_RecoverSubmitted value, $Res Function(_RecoverSubmitted) _then) = __$RecoverSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$RecoverSubmittedCopyWithImpl<$Res>
    implements _$RecoverSubmittedCopyWith<$Res> {
  __$RecoverSubmittedCopyWithImpl(this._self, this._then);

  final _RecoverSubmitted _self;
  final $Res Function(_RecoverSubmitted) _then;

/// Create a copy of RecoverEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_RecoverSubmitted(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RecoverState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecoverState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecoverState()';
}


}

/// @nodoc
class $RecoverStateCopyWith<$Res>  {
$RecoverStateCopyWith(RecoverState _, $Res Function(RecoverState) __);
}


/// Adds pattern-matching-related methods to [RecoverState].
extension RecoverStatePatterns on RecoverState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RecoverInitial value)?  initial,TResult Function( RecoverLoading value)?  loading,TResult Function( _RecoverFailure value)?  failure,TResult Function( _RecoverSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecoverInitial() when initial != null:
return initial(_that);case RecoverLoading() when loading != null:
return loading(_that);case _RecoverFailure() when failure != null:
return failure(_that);case _RecoverSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RecoverInitial value)  initial,required TResult Function( RecoverLoading value)  loading,required TResult Function( _RecoverFailure value)  failure,required TResult Function( _RecoverSuccess value)  success,}){
final _that = this;
switch (_that) {
case _RecoverInitial():
return initial(_that);case RecoverLoading():
return loading(_that);case _RecoverFailure():
return failure(_that);case _RecoverSuccess():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RecoverInitial value)?  initial,TResult? Function( RecoverLoading value)?  loading,TResult? Function( _RecoverFailure value)?  failure,TResult? Function( _RecoverSuccess value)?  success,}){
final _that = this;
switch (_that) {
case _RecoverInitial() when initial != null:
return initial(_that);case RecoverLoading() when loading != null:
return loading(_that);case _RecoverFailure() when failure != null:
return failure(_that);case _RecoverSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  failure,TResult Function( String email)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecoverInitial() when initial != null:
return initial();case RecoverLoading() when loading != null:
return loading();case _RecoverFailure() when failure != null:
return failure();case _RecoverSuccess() when success != null:
return success(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  failure,required TResult Function( String email)  success,}) {final _that = this;
switch (_that) {
case _RecoverInitial():
return initial();case RecoverLoading():
return loading();case _RecoverFailure():
return failure();case _RecoverSuccess():
return success(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  failure,TResult? Function( String email)?  success,}) {final _that = this;
switch (_that) {
case _RecoverInitial() when initial != null:
return initial();case RecoverLoading() when loading != null:
return loading();case _RecoverFailure() when failure != null:
return failure();case _RecoverSuccess() when success != null:
return success(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _RecoverInitial implements RecoverState {
  const _RecoverInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecoverInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecoverState.initial()';
}


}




/// @nodoc


class RecoverLoading implements RecoverState {
  const RecoverLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecoverLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecoverState.loading()';
}


}




/// @nodoc


class _RecoverFailure implements RecoverState {
  const _RecoverFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecoverFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecoverState.failure()';
}


}




/// @nodoc


class _RecoverSuccess implements RecoverState {
  const _RecoverSuccess(this.email);
  

 final  String email;

/// Create a copy of RecoverState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecoverSuccessCopyWith<_RecoverSuccess> get copyWith => __$RecoverSuccessCopyWithImpl<_RecoverSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecoverSuccess&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'RecoverState.success(email: $email)';
}


}

/// @nodoc
abstract mixin class _$RecoverSuccessCopyWith<$Res> implements $RecoverStateCopyWith<$Res> {
  factory _$RecoverSuccessCopyWith(_RecoverSuccess value, $Res Function(_RecoverSuccess) _then) = __$RecoverSuccessCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$RecoverSuccessCopyWithImpl<$Res>
    implements _$RecoverSuccessCopyWith<$Res> {
  __$RecoverSuccessCopyWithImpl(this._self, this._then);

  final _RecoverSuccess _self;
  final $Res Function(_RecoverSuccess) _then;

/// Create a copy of RecoverState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_RecoverSuccess(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
