// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nissay_login_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NissayDataModel {

// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;
/// Create a copy of NissayDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayDataModelCopyWith<NissayDataModel> get copyWith => _$NissayDataModelCopyWithImpl<NissayDataModel>(this as NissayDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayDataModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,totalContribution,totalProfitLoss,roi);

@override
String toString() {
  return 'NissayDataModel(totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi)';
}


}

/// @nodoc
abstract mixin class $NissayDataModelCopyWith<$Res>  {
  factory $NissayDataModelCopyWith(NissayDataModel value, $Res Function(NissayDataModel) _then) = _$NissayDataModelCopyWithImpl;
@useResult
$Res call({
 int totalAsset, int totalContribution, int totalProfitLoss, double roi
});




}
/// @nodoc
class _$NissayDataModelCopyWithImpl<$Res>
    implements $NissayDataModelCopyWith<$Res> {
  _$NissayDataModelCopyWithImpl(this._self, this._then);

  final NissayDataModel _self;
  final $Res Function(NissayDataModel) _then;

/// Create a copy of NissayDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,}) {
  return _then(_self.copyWith(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayDataModel].
extension NissayDataModelPatterns on NissayDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayDataModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayDataModel() when $default != null:
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi)  $default,) {final _that = this;
switch (_that) {
case _NissayDataModel():
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi)?  $default,) {final _that = this;
switch (_that) {
case _NissayDataModel() when $default != null:
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi);case _:
  return null;

}
}

}

/// @nodoc


class _NissayDataModel implements NissayDataModel {
   _NissayDataModel({required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi});
  

// 総資産評価額
@override final  int totalAsset;
// 拠出金額累計
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;
// 利回り
@override final  double roi;

/// Create a copy of NissayDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayDataModelCopyWith<_NissayDataModel> get copyWith => __$NissayDataModelCopyWithImpl<_NissayDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayDataModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,totalContribution,totalProfitLoss,roi);

@override
String toString() {
  return 'NissayDataModel(totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi)';
}


}

/// @nodoc
abstract mixin class _$NissayDataModelCopyWith<$Res> implements $NissayDataModelCopyWith<$Res> {
  factory _$NissayDataModelCopyWith(_NissayDataModel value, $Res Function(_NissayDataModel) _then) = __$NissayDataModelCopyWithImpl;
@override @useResult
$Res call({
 int totalAsset, int totalContribution, int totalProfitLoss, double roi
});




}
/// @nodoc
class __$NissayDataModelCopyWithImpl<$Res>
    implements _$NissayDataModelCopyWith<$Res> {
  __$NissayDataModelCopyWithImpl(this._self, this._then);

  final _NissayDataModel _self;
  final $Res Function(_NissayDataModel) _then;

/// Create a copy of NissayDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,}) {
  return _then(_NissayDataModel(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
