// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewPasswordEvent {

 String get link; String get password;
/// Create a copy of NewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewPasswordEventCopyWith<NewPasswordEvent> get copyWith => _$NewPasswordEventCopyWithImpl<NewPasswordEvent>(this as NewPasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordEvent&&(identical(other.link, link) || other.link == link)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,link,password);

@override
String toString() {
  return 'NewPasswordEvent(link: $link, password: $password)';
}


}

/// @nodoc
abstract mixin class $NewPasswordEventCopyWith<$Res>  {
  factory $NewPasswordEventCopyWith(NewPasswordEvent value, $Res Function(NewPasswordEvent) _then) = _$NewPasswordEventCopyWithImpl;
@useResult
$Res call({
 String link, String password
});




}
/// @nodoc
class _$NewPasswordEventCopyWithImpl<$Res>
    implements $NewPasswordEventCopyWith<$Res> {
  _$NewPasswordEventCopyWithImpl(this._self, this._then);

  final NewPasswordEvent _self;
  final $Res Function(NewPasswordEvent) _then;

/// Create a copy of NewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? link = null,Object? password = null,}) {
  return _then(NewPasswordEvent.submitted(
null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NewPasswordEvent].
extension NewPasswordEventPatterns on NewPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NewPasswordSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewPasswordSubmitted() when submitted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NewPasswordSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case _NewPasswordSubmitted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NewPasswordSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _NewPasswordSubmitted() when submitted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String link,  String password)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewPasswordSubmitted() when submitted != null:
return submitted(_that.link,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String link,  String password)  submitted,}) {final _that = this;
switch (_that) {
case _NewPasswordSubmitted():
return submitted(_that.link,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String link,  String password)?  submitted,}) {final _that = this;
switch (_that) {
case _NewPasswordSubmitted() when submitted != null:
return submitted(_that.link,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _NewPasswordSubmitted implements NewPasswordEvent {
  const _NewPasswordSubmitted(this.link, this.password);
  

@override final  String link;
@override final  String password;

/// Create a copy of NewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewPasswordSubmittedCopyWith<_NewPasswordSubmitted> get copyWith => __$NewPasswordSubmittedCopyWithImpl<_NewPasswordSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPasswordSubmitted&&(identical(other.link, link) || other.link == link)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,link,password);

@override
String toString() {
  return 'NewPasswordEvent.submitted(link: $link, password: $password)';
}


}

/// @nodoc
abstract mixin class _$NewPasswordSubmittedCopyWith<$Res> implements $NewPasswordEventCopyWith<$Res> {
  factory _$NewPasswordSubmittedCopyWith(_NewPasswordSubmitted value, $Res Function(_NewPasswordSubmitted) _then) = __$NewPasswordSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String link, String password
});




}
/// @nodoc
class __$NewPasswordSubmittedCopyWithImpl<$Res>
    implements _$NewPasswordSubmittedCopyWith<$Res> {
  __$NewPasswordSubmittedCopyWithImpl(this._self, this._then);

  final _NewPasswordSubmitted _self;
  final $Res Function(_NewPasswordSubmitted) _then;

/// Create a copy of NewPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? link = null,Object? password = null,}) {
  return _then(_NewPasswordSubmitted(
null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NewPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewPasswordState()';
}


}

/// @nodoc
class $NewPasswordStateCopyWith<$Res>  {
$NewPasswordStateCopyWith(NewPasswordState _, $Res Function(NewPasswordState) __);
}


/// Adds pattern-matching-related methods to [NewPasswordState].
extension NewPasswordStatePatterns on NewPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NewPasswordInitial value)?  initial,TResult Function( NewPasswordLoading value)?  loading,TResult Function( _NewPasswordFailure value)?  failure,TResult Function( _NewPasswordSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewPasswordInitial() when initial != null:
return initial(_that);case NewPasswordLoading() when loading != null:
return loading(_that);case _NewPasswordFailure() when failure != null:
return failure(_that);case _NewPasswordSuccess() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NewPasswordInitial value)  initial,required TResult Function( NewPasswordLoading value)  loading,required TResult Function( _NewPasswordFailure value)  failure,required TResult Function( _NewPasswordSuccess value)  success,}){
final _that = this;
switch (_that) {
case _NewPasswordInitial():
return initial(_that);case NewPasswordLoading():
return loading(_that);case _NewPasswordFailure():
return failure(_that);case _NewPasswordSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NewPasswordInitial value)?  initial,TResult? Function( NewPasswordLoading value)?  loading,TResult? Function( _NewPasswordFailure value)?  failure,TResult? Function( _NewPasswordSuccess value)?  success,}){
final _that = this;
switch (_that) {
case _NewPasswordInitial() when initial != null:
return initial(_that);case NewPasswordLoading() when loading != null:
return loading(_that);case _NewPasswordFailure() when failure != null:
return failure(_that);case _NewPasswordSuccess() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  failure,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewPasswordInitial() when initial != null:
return initial();case NewPasswordLoading() when loading != null:
return loading();case _NewPasswordFailure() when failure != null:
return failure();case _NewPasswordSuccess() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  failure,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _NewPasswordInitial():
return initial();case NewPasswordLoading():
return loading();case _NewPasswordFailure():
return failure();case _NewPasswordSuccess():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  failure,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _NewPasswordInitial() when initial != null:
return initial();case NewPasswordLoading() when loading != null:
return loading();case _NewPasswordFailure() when failure != null:
return failure();case _NewPasswordSuccess() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _NewPasswordInitial implements NewPasswordState {
  const _NewPasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewPasswordState.initial()';
}


}




/// @nodoc


class NewPasswordLoading implements NewPasswordState {
  const NewPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewPasswordState.loading()';
}


}




/// @nodoc


class _NewPasswordFailure implements NewPasswordState {
  const _NewPasswordFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPasswordFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewPasswordState.failure()';
}


}




/// @nodoc


class _NewPasswordSuccess implements NewPasswordState {
  const _NewPasswordSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPasswordSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewPasswordState.success()';
}


}




// dart format on
