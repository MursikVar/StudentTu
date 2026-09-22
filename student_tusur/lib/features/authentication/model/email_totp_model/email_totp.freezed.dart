// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_totp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailTotpResponse {

@JsonKey(name: 'code') String get code;
/// Create a copy of EmailTotpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailTotpResponseCopyWith<EmailTotpResponse> get copyWith => _$EmailTotpResponseCopyWithImpl<EmailTotpResponse>(this as EmailTotpResponse, _$identity);

  /// Serializes this EmailTotpResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailTotpResponse&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'EmailTotpResponse(code: $code)';
}


}

/// @nodoc
abstract mixin class $EmailTotpResponseCopyWith<$Res>  {
  factory $EmailTotpResponseCopyWith(EmailTotpResponse value, $Res Function(EmailTotpResponse) _then) = _$EmailTotpResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code') String code
});




}
/// @nodoc
class _$EmailTotpResponseCopyWithImpl<$Res>
    implements $EmailTotpResponseCopyWith<$Res> {
  _$EmailTotpResponseCopyWithImpl(this._self, this._then);

  final EmailTotpResponse _self;
  final $Res Function(EmailTotpResponse) _then;

/// Create a copy of EmailTotpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(EmailTotpResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailTotpResponse].
extension EmailTotpResponsePatterns on EmailTotpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailTotpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailTotpResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailTotpResponse value)  $default,){
final _that = this;
switch (_that) {
case _EmailTotpResponse():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailTotpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EmailTotpResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailTotpResponse() when $default != null:
return $default(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String code)  $default,) {final _that = this;
switch (_that) {
case _EmailTotpResponse():
return $default(_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'code')  String code)?  $default,) {final _that = this;
switch (_that) {
case _EmailTotpResponse() when $default != null:
return $default(_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailTotpResponse implements EmailTotpResponse {
  const _EmailTotpResponse({@JsonKey(name: 'code') required this.code});
  factory _EmailTotpResponse.fromJson(Map<String, dynamic> json) => _$EmailTotpResponseFromJson(json);

@override@JsonKey(name: 'code') final  String code;

/// Create a copy of EmailTotpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailTotpResponseCopyWith<_EmailTotpResponse> get copyWith => __$EmailTotpResponseCopyWithImpl<_EmailTotpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailTotpResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailTotpResponse&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'EmailTotpResponse(code: $code)';
}


}

/// @nodoc
abstract mixin class _$EmailTotpResponseCopyWith<$Res> implements $EmailTotpResponseCopyWith<$Res> {
  factory _$EmailTotpResponseCopyWith(_EmailTotpResponse value, $Res Function(_EmailTotpResponse) _then) = __$EmailTotpResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code') String code
});




}
/// @nodoc
class __$EmailTotpResponseCopyWithImpl<$Res>
    implements _$EmailTotpResponseCopyWith<$Res> {
  __$EmailTotpResponseCopyWithImpl(this._self, this._then);

  final _EmailTotpResponse _self;
  final $Res Function(_EmailTotpResponse) _then;

/// Create a copy of EmailTotpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(_EmailTotpResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
