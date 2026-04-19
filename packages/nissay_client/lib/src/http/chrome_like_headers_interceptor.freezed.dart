// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrome_like_headers_interceptor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestHeadersResponse {

 Map<String, String> get chrome;
/// Create a copy of LatestHeadersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatestHeadersResponseCopyWith<LatestHeadersResponse> get copyWith => _$LatestHeadersResponseCopyWithImpl<LatestHeadersResponse>(this as LatestHeadersResponse, _$identity);

  /// Serializes this LatestHeadersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatestHeadersResponse&&const DeepCollectionEquality().equals(other.chrome, chrome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chrome));

@override
String toString() {
  return 'LatestHeadersResponse(chrome: $chrome)';
}


}

/// @nodoc
abstract mixin class $LatestHeadersResponseCopyWith<$Res>  {
  factory $LatestHeadersResponseCopyWith(LatestHeadersResponse value, $Res Function(LatestHeadersResponse) _then) = _$LatestHeadersResponseCopyWithImpl;
@useResult
$Res call({
 Map<String, String> chrome
});




}
/// @nodoc
class _$LatestHeadersResponseCopyWithImpl<$Res>
    implements $LatestHeadersResponseCopyWith<$Res> {
  _$LatestHeadersResponseCopyWithImpl(this._self, this._then);

  final LatestHeadersResponse _self;
  final $Res Function(LatestHeadersResponse) _then;

/// Create a copy of LatestHeadersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chrome = null,}) {
  return _then(_self.copyWith(
chrome: null == chrome ? _self.chrome : chrome // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LatestHeadersResponse].
extension LatestHeadersResponsePatterns on LatestHeadersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatestHeadersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatestHeadersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatestHeadersResponse value)  $default,){
final _that = this;
switch (_that) {
case _LatestHeadersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatestHeadersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LatestHeadersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> chrome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatestHeadersResponse() when $default != null:
return $default(_that.chrome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> chrome)  $default,) {final _that = this;
switch (_that) {
case _LatestHeadersResponse():
return $default(_that.chrome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> chrome)?  $default,) {final _that = this;
switch (_that) {
case _LatestHeadersResponse() when $default != null:
return $default(_that.chrome);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatestHeadersResponse implements LatestHeadersResponse {
  const _LatestHeadersResponse({required final  Map<String, String> chrome}): _chrome = chrome;
  factory _LatestHeadersResponse.fromJson(Map<String, dynamic> json) => _$LatestHeadersResponseFromJson(json);

 final  Map<String, String> _chrome;
@override Map<String, String> get chrome {
  if (_chrome is EqualUnmodifiableMapView) return _chrome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_chrome);
}


/// Create a copy of LatestHeadersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatestHeadersResponseCopyWith<_LatestHeadersResponse> get copyWith => __$LatestHeadersResponseCopyWithImpl<_LatestHeadersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatestHeadersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatestHeadersResponse&&const DeepCollectionEquality().equals(other._chrome, _chrome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chrome));

@override
String toString() {
  return 'LatestHeadersResponse(chrome: $chrome)';
}


}

/// @nodoc
abstract mixin class _$LatestHeadersResponseCopyWith<$Res> implements $LatestHeadersResponseCopyWith<$Res> {
  factory _$LatestHeadersResponseCopyWith(_LatestHeadersResponse value, $Res Function(_LatestHeadersResponse) _then) = __$LatestHeadersResponseCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> chrome
});




}
/// @nodoc
class __$LatestHeadersResponseCopyWithImpl<$Res>
    implements _$LatestHeadersResponseCopyWith<$Res> {
  __$LatestHeadersResponseCopyWithImpl(this._self, this._then);

  final _LatestHeadersResponse _self;
  final $Res Function(_LatestHeadersResponse) _then;

/// Create a copy of LatestHeadersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chrome = null,}) {
  return _then(_LatestHeadersResponse(
chrome: null == chrome ? _self._chrome : chrome // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
