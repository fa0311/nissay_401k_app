// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nissay_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NissayHeader {

// 加入者名
 String get name;
/// Create a copy of NissayHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHeaderCopyWith<NissayHeader> get copyWith => _$NissayHeaderCopyWithImpl<NissayHeader>(this as NissayHeader, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHeader&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'NissayHeader(name: $name)';
}


}

/// @nodoc
abstract mixin class $NissayHeaderCopyWith<$Res>  {
  factory $NissayHeaderCopyWith(NissayHeader value, $Res Function(NissayHeader) _then) = _$NissayHeaderCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NissayHeaderCopyWithImpl<$Res>
    implements $NissayHeaderCopyWith<$Res> {
  _$NissayHeaderCopyWithImpl(this._self, this._then);

  final NissayHeader _self;
  final $Res Function(NissayHeader) _then;

/// Create a copy of NissayHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayHeader].
extension NissayHeaderPatterns on NissayHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHeader value)  $default,){
final _that = this;
switch (_that) {
case _NissayHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHeader value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayHeader() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _NissayHeader():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _NissayHeader() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHeader implements NissayHeader {
  const _NissayHeader({required this.name});
  

// 加入者名
@override final  String name;

/// Create a copy of NissayHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHeaderCopyWith<_NissayHeader> get copyWith => __$NissayHeaderCopyWithImpl<_NissayHeader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHeader&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'NissayHeader(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NissayHeaderCopyWith<$Res> implements $NissayHeaderCopyWith<$Res> {
  factory _$NissayHeaderCopyWith(_NissayHeader value, $Res Function(_NissayHeader) _then) = __$NissayHeaderCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NissayHeaderCopyWithImpl<$Res>
    implements _$NissayHeaderCopyWith<$Res> {
  __$NissayHeaderCopyWithImpl(this._self, this._then);

  final _NissayHeader _self;
  final $Res Function(_NissayHeader) _then;

/// Create a copy of NissayHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NissayHeader(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NissayCurrentAssets {

// プラン名
 String get planName;// 前回ログイン日時
 DateTime get lastLogin;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;// 照会日時
 DateTime get date;// 現在保有している商品の内訳
 List<NissayCurrentAssetHolding> get holdings;
/// Create a copy of NissayCurrentAssets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayCurrentAssetsCopyWith<NissayCurrentAssets> get copyWith => _$NissayCurrentAssetsCopyWithImpl<NissayCurrentAssets>(this as NissayCurrentAssets, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayCurrentAssets&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.holdings, holdings));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(holdings));

@override
String toString() {
  return 'NissayCurrentAssets(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, holdings: $holdings)';
}


}

/// @nodoc
abstract mixin class $NissayCurrentAssetsCopyWith<$Res>  {
  factory $NissayCurrentAssetsCopyWith(NissayCurrentAssets value, $Res Function(NissayCurrentAssets) _then) = _$NissayCurrentAssetsCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayCurrentAssetHolding> holdings
});




}
/// @nodoc
class _$NissayCurrentAssetsCopyWithImpl<$Res>
    implements $NissayCurrentAssetsCopyWith<$Res> {
  _$NissayCurrentAssetsCopyWithImpl(this._self, this._then);

  final NissayCurrentAssets _self;
  final $Res Function(NissayCurrentAssets) _then;

/// Create a copy of NissayCurrentAssets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? holdings = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<NissayCurrentAssetHolding>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayCurrentAssets].
extension NissayCurrentAssetsPatterns on NissayCurrentAssets {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayCurrentAssets value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayCurrentAssets() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayCurrentAssets value)  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssets():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayCurrentAssets value)?  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssets() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayCurrentAssetHolding> holdings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayCurrentAssets() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.holdings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayCurrentAssetHolding> holdings)  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssets():
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.holdings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayCurrentAssetHolding> holdings)?  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssets() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.holdings);case _:
  return null;

}
}

}

/// @nodoc


class _NissayCurrentAssets implements NissayCurrentAssets {
  const _NissayCurrentAssets({required this.planName, required this.lastLogin, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi, required this.date, required final  List<NissayCurrentAssetHolding> holdings}): _holdings = holdings;
  

// プラン名
@override final  String planName;
// 前回ログイン日時
@override final  DateTime lastLogin;
// 総資産評価額
@override final  int totalAsset;
// 拠出金額累計
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;
// 利回り
@override final  double roi;
// 照会日時
@override final  DateTime date;
// 現在保有している商品の内訳
 final  List<NissayCurrentAssetHolding> _holdings;
// 現在保有している商品の内訳
@override List<NissayCurrentAssetHolding> get holdings {
  if (_holdings is EqualUnmodifiableListView) return _holdings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holdings);
}


/// Create a copy of NissayCurrentAssets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayCurrentAssetsCopyWith<_NissayCurrentAssets> get copyWith => __$NissayCurrentAssetsCopyWithImpl<_NissayCurrentAssets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayCurrentAssets&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._holdings, _holdings));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(_holdings));

@override
String toString() {
  return 'NissayCurrentAssets(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, holdings: $holdings)';
}


}

/// @nodoc
abstract mixin class _$NissayCurrentAssetsCopyWith<$Res> implements $NissayCurrentAssetsCopyWith<$Res> {
  factory _$NissayCurrentAssetsCopyWith(_NissayCurrentAssets value, $Res Function(_NissayCurrentAssets) _then) = __$NissayCurrentAssetsCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayCurrentAssetHolding> holdings
});




}
/// @nodoc
class __$NissayCurrentAssetsCopyWithImpl<$Res>
    implements _$NissayCurrentAssetsCopyWith<$Res> {
  __$NissayCurrentAssetsCopyWithImpl(this._self, this._then);

  final _NissayCurrentAssets _self;
  final $Res Function(_NissayCurrentAssets) _then;

/// Create a copy of NissayCurrentAssets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? holdings = null,}) {
  return _then(_NissayCurrentAssets(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,holdings: null == holdings ? _self._holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<NissayCurrentAssetHolding>,
  ));
}


}

/// @nodoc
mixin _$NissayCurrentAssetHolding {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 資産評価額
 int get totalAsset;// 評価損益
 int get profitLoss;// 資産比率
 double get assetRatio;
/// Create a copy of NissayCurrentAssetHolding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayCurrentAssetHoldingCopyWith<NissayCurrentAssetHolding> get copyWith => _$NissayCurrentAssetHoldingCopyWithImpl<NissayCurrentAssetHolding>(this as NissayCurrentAssetHolding, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayCurrentAssetHolding&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayCurrentAssetHolding(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class $NissayCurrentAssetHoldingCopyWith<$Res>  {
  factory $NissayCurrentAssetHoldingCopyWith(NissayCurrentAssetHolding value, $Res Function(NissayCurrentAssetHolding) _then) = _$NissayCurrentAssetHoldingCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class _$NissayCurrentAssetHoldingCopyWithImpl<$Res>
    implements $NissayCurrentAssetHoldingCopyWith<$Res> {
  _$NissayCurrentAssetHoldingCopyWithImpl(this._self, this._then);

  final NissayCurrentAssetHolding _self;
  final $Res Function(NissayCurrentAssetHolding) _then;

/// Create a copy of NissayCurrentAssetHolding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,}) {
  return _then(_self.copyWith(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayCurrentAssetHolding].
extension NissayCurrentAssetHoldingPatterns on NissayCurrentAssetHolding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayCurrentAssetHolding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayCurrentAssetHolding value)  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayCurrentAssetHolding value)?  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio)  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding():
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio)?  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetHolding() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayCurrentAssetHolding implements NissayCurrentAssetHolding {
  const _NissayCurrentAssetHolding({required this.operationType, required this.productName, required this.totalAsset, required this.profitLoss, required this.assetRatio});
  

// 運用タイプ
@override final  String operationType;
// 商品名
@override final  String productName;
// 資産評価額
@override final  int totalAsset;
// 評価損益
@override final  int profitLoss;
// 資産比率
@override final  double assetRatio;

/// Create a copy of NissayCurrentAssetHolding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayCurrentAssetHoldingCopyWith<_NissayCurrentAssetHolding> get copyWith => __$NissayCurrentAssetHoldingCopyWithImpl<_NissayCurrentAssetHolding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayCurrentAssetHolding&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayCurrentAssetHolding(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayCurrentAssetHoldingCopyWith<$Res> implements $NissayCurrentAssetHoldingCopyWith<$Res> {
  factory _$NissayCurrentAssetHoldingCopyWith(_NissayCurrentAssetHolding value, $Res Function(_NissayCurrentAssetHolding) _then) = __$NissayCurrentAssetHoldingCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class __$NissayCurrentAssetHoldingCopyWithImpl<$Res>
    implements _$NissayCurrentAssetHoldingCopyWith<$Res> {
  __$NissayCurrentAssetHoldingCopyWithImpl(this._self, this._then);

  final _NissayCurrentAssetHolding _self;
  final $Res Function(_NissayCurrentAssetHolding) _then;

/// Create a copy of NissayCurrentAssetHolding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,}) {
  return _then(_NissayCurrentAssetHolding(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$NissayContribution {

// プラン名
 String get planName;// 前回ログイン日時
 DateTime get lastLogin;// 次回拠出予定の掛金額
 int get contributionAmount;// 次回拠出日
 DateTime get contributionDate;// 照会日時
 DateTime get date;// 掛金の配分内訳
 List<NissayContributionAllocation> get allocations;
/// Create a copy of NissayContribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayContributionCopyWith<NissayContribution> get copyWith => _$NissayContributionCopyWithImpl<NissayContribution>(this as NissayContribution, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayContribution&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.contributionAmount, contributionAmount) || other.contributionAmount == contributionAmount)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.allocations, allocations));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,contributionAmount,contributionDate,date,const DeepCollectionEquality().hash(allocations));

@override
String toString() {
  return 'NissayContribution(planName: $planName, lastLogin: $lastLogin, contributionAmount: $contributionAmount, contributionDate: $contributionDate, date: $date, allocations: $allocations)';
}


}

/// @nodoc
abstract mixin class $NissayContributionCopyWith<$Res>  {
  factory $NissayContributionCopyWith(NissayContribution value, $Res Function(NissayContribution) _then) = _$NissayContributionCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, int contributionAmount, DateTime contributionDate, DateTime date, List<NissayContributionAllocation> allocations
});




}
/// @nodoc
class _$NissayContributionCopyWithImpl<$Res>
    implements $NissayContributionCopyWith<$Res> {
  _$NissayContributionCopyWithImpl(this._self, this._then);

  final NissayContribution _self;
  final $Res Function(NissayContribution) _then;

/// Create a copy of NissayContribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? contributionAmount = null,Object? contributionDate = null,Object? date = null,Object? allocations = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,contributionAmount: null == contributionAmount ? _self.contributionAmount : contributionAmount // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,allocations: null == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<NissayContributionAllocation>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayContribution].
extension NissayContributionPatterns on NissayContribution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayContribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayContribution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayContribution value)  $default,){
final _that = this;
switch (_that) {
case _NissayContribution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayContribution value)?  $default,){
final _that = this;
switch (_that) {
case _NissayContribution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int contributionAmount,  DateTime contributionDate,  DateTime date,  List<NissayContributionAllocation> allocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayContribution() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.contributionAmount,_that.contributionDate,_that.date,_that.allocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int contributionAmount,  DateTime contributionDate,  DateTime date,  List<NissayContributionAllocation> allocations)  $default,) {final _that = this;
switch (_that) {
case _NissayContribution():
return $default(_that.planName,_that.lastLogin,_that.contributionAmount,_that.contributionDate,_that.date,_that.allocations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  int contributionAmount,  DateTime contributionDate,  DateTime date,  List<NissayContributionAllocation> allocations)?  $default,) {final _that = this;
switch (_that) {
case _NissayContribution() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.contributionAmount,_that.contributionDate,_that.date,_that.allocations);case _:
  return null;

}
}

}

/// @nodoc


class _NissayContribution implements NissayContribution {
  const _NissayContribution({required this.planName, required this.lastLogin, required this.contributionAmount, required this.contributionDate, required this.date, required final  List<NissayContributionAllocation> allocations}): _allocations = allocations;
  

// プラン名
@override final  String planName;
// 前回ログイン日時
@override final  DateTime lastLogin;
// 次回拠出予定の掛金額
@override final  int contributionAmount;
// 次回拠出日
@override final  DateTime contributionDate;
// 照会日時
@override final  DateTime date;
// 掛金の配分内訳
 final  List<NissayContributionAllocation> _allocations;
// 掛金の配分内訳
@override List<NissayContributionAllocation> get allocations {
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allocations);
}


/// Create a copy of NissayContribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayContributionCopyWith<_NissayContribution> get copyWith => __$NissayContributionCopyWithImpl<_NissayContribution>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayContribution&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.contributionAmount, contributionAmount) || other.contributionAmount == contributionAmount)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._allocations, _allocations));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,contributionAmount,contributionDate,date,const DeepCollectionEquality().hash(_allocations));

@override
String toString() {
  return 'NissayContribution(planName: $planName, lastLogin: $lastLogin, contributionAmount: $contributionAmount, contributionDate: $contributionDate, date: $date, allocations: $allocations)';
}


}

/// @nodoc
abstract mixin class _$NissayContributionCopyWith<$Res> implements $NissayContributionCopyWith<$Res> {
  factory _$NissayContributionCopyWith(_NissayContribution value, $Res Function(_NissayContribution) _then) = __$NissayContributionCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, int contributionAmount, DateTime contributionDate, DateTime date, List<NissayContributionAllocation> allocations
});




}
/// @nodoc
class __$NissayContributionCopyWithImpl<$Res>
    implements _$NissayContributionCopyWith<$Res> {
  __$NissayContributionCopyWithImpl(this._self, this._then);

  final _NissayContribution _self;
  final $Res Function(_NissayContribution) _then;

/// Create a copy of NissayContribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? contributionAmount = null,Object? contributionDate = null,Object? date = null,Object? allocations = null,}) {
  return _then(_NissayContribution(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,contributionAmount: null == contributionAmount ? _self.contributionAmount : contributionAmount // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,allocations: null == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<NissayContributionAllocation>,
  ));
}


}

/// @nodoc
mixin _$NissayContributionAllocation {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 運用割合
 double get contributionRatio;
/// Create a copy of NissayContributionAllocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayContributionAllocationCopyWith<NissayContributionAllocation> get copyWith => _$NissayContributionAllocationCopyWithImpl<NissayContributionAllocation>(this as NissayContributionAllocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayContributionAllocation&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.contributionRatio, contributionRatio) || other.contributionRatio == contributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,contributionRatio);

@override
String toString() {
  return 'NissayContributionAllocation(operationType: $operationType, productName: $productName, contributionRatio: $contributionRatio)';
}


}

/// @nodoc
abstract mixin class $NissayContributionAllocationCopyWith<$Res>  {
  factory $NissayContributionAllocationCopyWith(NissayContributionAllocation value, $Res Function(NissayContributionAllocation) _then) = _$NissayContributionAllocationCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, double contributionRatio
});




}
/// @nodoc
class _$NissayContributionAllocationCopyWithImpl<$Res>
    implements $NissayContributionAllocationCopyWith<$Res> {
  _$NissayContributionAllocationCopyWithImpl(this._self, this._then);

  final NissayContributionAllocation _self;
  final $Res Function(NissayContributionAllocation) _then;

/// Create a copy of NissayContributionAllocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationType = null,Object? productName = null,Object? contributionRatio = null,}) {
  return _then(_self.copyWith(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,contributionRatio: null == contributionRatio ? _self.contributionRatio : contributionRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayContributionAllocation].
extension NissayContributionAllocationPatterns on NissayContributionAllocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayContributionAllocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayContributionAllocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayContributionAllocation value)  $default,){
final _that = this;
switch (_that) {
case _NissayContributionAllocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayContributionAllocation value)?  $default,){
final _that = this;
switch (_that) {
case _NissayContributionAllocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String operationType,  String productName,  double contributionRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayContributionAllocation() when $default != null:
return $default(_that.operationType,_that.productName,_that.contributionRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String operationType,  String productName,  double contributionRatio)  $default,) {final _that = this;
switch (_that) {
case _NissayContributionAllocation():
return $default(_that.operationType,_that.productName,_that.contributionRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String operationType,  String productName,  double contributionRatio)?  $default,) {final _that = this;
switch (_that) {
case _NissayContributionAllocation() when $default != null:
return $default(_that.operationType,_that.productName,_that.contributionRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayContributionAllocation implements NissayContributionAllocation {
  const _NissayContributionAllocation({required this.operationType, required this.productName, required this.contributionRatio});
  

// 運用タイプ
@override final  String operationType;
// 商品名
@override final  String productName;
// 運用割合
@override final  double contributionRatio;

/// Create a copy of NissayContributionAllocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayContributionAllocationCopyWith<_NissayContributionAllocation> get copyWith => __$NissayContributionAllocationCopyWithImpl<_NissayContributionAllocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayContributionAllocation&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.contributionRatio, contributionRatio) || other.contributionRatio == contributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,contributionRatio);

@override
String toString() {
  return 'NissayContributionAllocation(operationType: $operationType, productName: $productName, contributionRatio: $contributionRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayContributionAllocationCopyWith<$Res> implements $NissayContributionAllocationCopyWith<$Res> {
  factory _$NissayContributionAllocationCopyWith(_NissayContributionAllocation value, $Res Function(_NissayContributionAllocation) _then) = __$NissayContributionAllocationCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, double contributionRatio
});




}
/// @nodoc
class __$NissayContributionAllocationCopyWithImpl<$Res>
    implements _$NissayContributionAllocationCopyWith<$Res> {
  __$NissayContributionAllocationCopyWithImpl(this._self, this._then);

  final _NissayContributionAllocation _self;
  final $Res Function(_NissayContributionAllocation) _then;

/// Create a copy of NissayContributionAllocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? contributionRatio = null,}) {
  return _then(_NissayContributionAllocation(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,contributionRatio: null == contributionRatio ? _self.contributionRatio : contributionRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$NissayHistoricalAssets {

// プラン名
 String get planName;// 前回ログイン日時
 DateTime get lastLogin;// 月末時点の資産推移
 List<NissayHistoricalAssetEntry> get entries;
/// Create a copy of NissayHistoricalAssets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHistoricalAssetsCopyWith<NissayHistoricalAssets> get copyWith => _$NissayHistoricalAssetsCopyWithImpl<NissayHistoricalAssets>(this as NissayHistoricalAssets, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHistoricalAssets&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&const DeepCollectionEquality().equals(other.entries, entries));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'NissayHistoricalAssets(planName: $planName, lastLogin: $lastLogin, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $NissayHistoricalAssetsCopyWith<$Res>  {
  factory $NissayHistoricalAssetsCopyWith(NissayHistoricalAssets value, $Res Function(NissayHistoricalAssets) _then) = _$NissayHistoricalAssetsCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, List<NissayHistoricalAssetEntry> entries
});




}
/// @nodoc
class _$NissayHistoricalAssetsCopyWithImpl<$Res>
    implements $NissayHistoricalAssetsCopyWith<$Res> {
  _$NissayHistoricalAssetsCopyWithImpl(this._self, this._then);

  final NissayHistoricalAssets _self;
  final $Res Function(NissayHistoricalAssets) _then;

/// Create a copy of NissayHistoricalAssets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? entries = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<NissayHistoricalAssetEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayHistoricalAssets].
extension NissayHistoricalAssetsPatterns on NissayHistoricalAssets {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHistoricalAssets value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHistoricalAssets() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHistoricalAssets value)  $default,){
final _that = this;
switch (_that) {
case _NissayHistoricalAssets():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHistoricalAssets value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHistoricalAssets() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  List<NissayHistoricalAssetEntry> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayHistoricalAssets() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  List<NissayHistoricalAssetEntry> entries)  $default,) {final _that = this;
switch (_that) {
case _NissayHistoricalAssets():
return $default(_that.planName,_that.lastLogin,_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  List<NissayHistoricalAssetEntry> entries)?  $default,) {final _that = this;
switch (_that) {
case _NissayHistoricalAssets() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.entries);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHistoricalAssets implements NissayHistoricalAssets {
  const _NissayHistoricalAssets({required this.planName, required this.lastLogin, required final  List<NissayHistoricalAssetEntry> entries}): _entries = entries;
  

// プラン名
@override final  String planName;
// 前回ログイン日時
@override final  DateTime lastLogin;
// 月末時点の資産推移
 final  List<NissayHistoricalAssetEntry> _entries;
// 月末時点の資産推移
@override List<NissayHistoricalAssetEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of NissayHistoricalAssets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHistoricalAssetsCopyWith<_NissayHistoricalAssets> get copyWith => __$NissayHistoricalAssetsCopyWithImpl<_NissayHistoricalAssets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHistoricalAssets&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&const DeepCollectionEquality().equals(other._entries, _entries));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'NissayHistoricalAssets(planName: $planName, lastLogin: $lastLogin, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$NissayHistoricalAssetsCopyWith<$Res> implements $NissayHistoricalAssetsCopyWith<$Res> {
  factory _$NissayHistoricalAssetsCopyWith(_NissayHistoricalAssets value, $Res Function(_NissayHistoricalAssets) _then) = __$NissayHistoricalAssetsCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, List<NissayHistoricalAssetEntry> entries
});




}
/// @nodoc
class __$NissayHistoricalAssetsCopyWithImpl<$Res>
    implements _$NissayHistoricalAssetsCopyWith<$Res> {
  __$NissayHistoricalAssetsCopyWithImpl(this._self, this._then);

  final _NissayHistoricalAssets _self;
  final $Res Function(_NissayHistoricalAssets) _then;

/// Create a copy of NissayHistoricalAssets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? entries = null,}) {
  return _then(_NissayHistoricalAssets(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<NissayHistoricalAssetEntry>,
  ));
}


}

/// @nodoc
mixin _$NissayHistoricalAssetEntry {

// 年月
 DateTime get date;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;
/// Create a copy of NissayHistoricalAssetEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHistoricalAssetEntryCopyWith<NissayHistoricalAssetEntry> get copyWith => _$NissayHistoricalAssetEntryCopyWithImpl<NissayHistoricalAssetEntry>(this as NissayHistoricalAssetEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHistoricalAssetEntry&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoricalAssetEntry(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class $NissayHistoricalAssetEntryCopyWith<$Res>  {
  factory $NissayHistoricalAssetEntryCopyWith(NissayHistoricalAssetEntry value, $Res Function(NissayHistoricalAssetEntry) _then) = _$NissayHistoricalAssetEntryCopyWithImpl;
@useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class _$NissayHistoricalAssetEntryCopyWithImpl<$Res>
    implements $NissayHistoricalAssetEntryCopyWith<$Res> {
  _$NissayHistoricalAssetEntryCopyWithImpl(this._self, this._then);

  final NissayHistoricalAssetEntry _self;
  final $Res Function(NissayHistoricalAssetEntry) _then;

/// Create a copy of NissayHistoricalAssetEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayHistoricalAssetEntry].
extension NissayHistoricalAssetEntryPatterns on NissayHistoricalAssetEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHistoricalAssetEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHistoricalAssetEntry value)  $default,){
final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHistoricalAssetEntry value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int totalAsset,  int totalContribution,  int totalProfitLoss)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry() when $default != null:
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int totalAsset,  int totalContribution,  int totalProfitLoss)  $default,) {final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry():
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int totalAsset,  int totalContribution,  int totalProfitLoss)?  $default,) {final _that = this;
switch (_that) {
case _NissayHistoricalAssetEntry() when $default != null:
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHistoricalAssetEntry implements NissayHistoricalAssetEntry {
  const _NissayHistoricalAssetEntry({required this.date, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss});
  

// 年月
@override final  DateTime date;
// 総資産評価額
@override final  int totalAsset;
// 拠出金額累計
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;

/// Create a copy of NissayHistoricalAssetEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHistoricalAssetEntryCopyWith<_NissayHistoricalAssetEntry> get copyWith => __$NissayHistoricalAssetEntryCopyWithImpl<_NissayHistoricalAssetEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHistoricalAssetEntry&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoricalAssetEntry(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class _$NissayHistoricalAssetEntryCopyWith<$Res> implements $NissayHistoricalAssetEntryCopyWith<$Res> {
  factory _$NissayHistoricalAssetEntryCopyWith(_NissayHistoricalAssetEntry value, $Res Function(_NissayHistoricalAssetEntry) _then) = __$NissayHistoricalAssetEntryCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class __$NissayHistoricalAssetEntryCopyWithImpl<$Res>
    implements _$NissayHistoricalAssetEntryCopyWith<$Res> {
  __$NissayHistoricalAssetEntryCopyWithImpl(this._self, this._then);

  final _NissayHistoricalAssetEntry _self;
  final $Res Function(_NissayHistoricalAssetEntry) _then;

/// Create a copy of NissayHistoricalAssetEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,}) {
  return _then(_NissayHistoricalAssetEntry(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
