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
mixin _$NissayHeadModel {

// 名前
 String get name;
/// Create a copy of NissayHeadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHeadModelCopyWith<NissayHeadModel> get copyWith => _$NissayHeadModelCopyWithImpl<NissayHeadModel>(this as NissayHeadModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHeadModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'NissayHeadModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $NissayHeadModelCopyWith<$Res>  {
  factory $NissayHeadModelCopyWith(NissayHeadModel value, $Res Function(NissayHeadModel) _then) = _$NissayHeadModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NissayHeadModelCopyWithImpl<$Res>
    implements $NissayHeadModelCopyWith<$Res> {
  _$NissayHeadModelCopyWithImpl(this._self, this._then);

  final NissayHeadModel _self;
  final $Res Function(NissayHeadModel) _then;

/// Create a copy of NissayHeadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayHeadModel].
extension NissayHeadModelPatterns on NissayHeadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHeadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHeadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHeadModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayHeadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHeadModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHeadModel() when $default != null:
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
case _NissayHeadModel() when $default != null:
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
case _NissayHeadModel():
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
case _NissayHeadModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHeadModel implements NissayHeadModel {
  const _NissayHeadModel({required this.name});
  

// 名前
@override final  String name;

/// Create a copy of NissayHeadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHeadModelCopyWith<_NissayHeadModel> get copyWith => __$NissayHeadModelCopyWithImpl<_NissayHeadModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHeadModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'NissayHeadModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NissayHeadModelCopyWith<$Res> implements $NissayHeadModelCopyWith<$Res> {
  factory _$NissayHeadModelCopyWith(_NissayHeadModel value, $Res Function(_NissayHeadModel) _then) = __$NissayHeadModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NissayHeadModelCopyWithImpl<$Res>
    implements _$NissayHeadModelCopyWith<$Res> {
  __$NissayHeadModelCopyWithImpl(this._self, this._then);

  final _NissayHeadModel _self;
  final $Res Function(_NissayHeadModel) _then;

/// Create a copy of NissayHeadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NissayHeadModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NissayCurrentAssetsModel {

// プラン名
 String get planName;// 最終ログイン日時
 DateTime get lastLogin;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;// 照会日時
 DateTime get date;// 運用商品の詳細
 List<NissayTotalDetailsModel> get details;
/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayCurrentAssetsModelCopyWith<NissayCurrentAssetsModel> get copyWith => _$NissayCurrentAssetsModelCopyWithImpl<NissayCurrentAssetsModel>(this as NissayCurrentAssetsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayCurrentAssetsModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.details, details));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'NissayCurrentAssetsModel(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, details: $details)';
}


}

/// @nodoc
abstract mixin class $NissayCurrentAssetsModelCopyWith<$Res>  {
  factory $NissayCurrentAssetsModelCopyWith(NissayCurrentAssetsModel value, $Res Function(NissayCurrentAssetsModel) _then) = _$NissayCurrentAssetsModelCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayTotalDetailsModel> details
});




}
/// @nodoc
class _$NissayCurrentAssetsModelCopyWithImpl<$Res>
    implements $NissayCurrentAssetsModelCopyWith<$Res> {
  _$NissayCurrentAssetsModelCopyWithImpl(this._self, this._then);

  final NissayCurrentAssetsModel _self;
  final $Res Function(NissayCurrentAssetsModel) _then;

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? details = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<NissayTotalDetailsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayCurrentAssetsModel].
extension NissayCurrentAssetsModelPatterns on NissayCurrentAssetsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayCurrentAssetsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayCurrentAssetsModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayCurrentAssetsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details)  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel():
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details)?  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _NissayCurrentAssetsModel implements NissayCurrentAssetsModel {
  const _NissayCurrentAssetsModel({required this.planName, required this.lastLogin, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi, required this.date, required final  List<NissayTotalDetailsModel> details}): _details = details;
  

// プラン名
@override final  String planName;
// 最終ログイン日時
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
// 運用商品の詳細
 final  List<NissayTotalDetailsModel> _details;
// 運用商品の詳細
@override List<NissayTotalDetailsModel> get details {
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_details);
}


/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayCurrentAssetsModelCopyWith<_NissayCurrentAssetsModel> get copyWith => __$NissayCurrentAssetsModelCopyWithImpl<_NissayCurrentAssetsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayCurrentAssetsModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._details, _details));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'NissayCurrentAssetsModel(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, details: $details)';
}


}

/// @nodoc
abstract mixin class _$NissayCurrentAssetsModelCopyWith<$Res> implements $NissayCurrentAssetsModelCopyWith<$Res> {
  factory _$NissayCurrentAssetsModelCopyWith(_NissayCurrentAssetsModel value, $Res Function(_NissayCurrentAssetsModel) _then) = __$NissayCurrentAssetsModelCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayTotalDetailsModel> details
});




}
/// @nodoc
class __$NissayCurrentAssetsModelCopyWithImpl<$Res>
    implements _$NissayCurrentAssetsModelCopyWith<$Res> {
  __$NissayCurrentAssetsModelCopyWithImpl(this._self, this._then);

  final _NissayCurrentAssetsModel _self;
  final $Res Function(_NissayCurrentAssetsModel) _then;

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? details = null,}) {
  return _then(_NissayCurrentAssetsModel(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<NissayTotalDetailsModel>,
  ));
}


}

/// @nodoc
mixin _$NissayTotalDetailsModel {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 総資産評価額
 int get totalAsset;// 評価損益
 int get profitLoss;// 資産比率
 double get assetRatio;
/// Create a copy of NissayTotalDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayTotalDetailsModelCopyWith<NissayTotalDetailsModel> get copyWith => _$NissayTotalDetailsModelCopyWithImpl<NissayTotalDetailsModel>(this as NissayTotalDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayTotalDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayTotalDetailsModel(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class $NissayTotalDetailsModelCopyWith<$Res>  {
  factory $NissayTotalDetailsModelCopyWith(NissayTotalDetailsModel value, $Res Function(NissayTotalDetailsModel) _then) = _$NissayTotalDetailsModelCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class _$NissayTotalDetailsModelCopyWithImpl<$Res>
    implements $NissayTotalDetailsModelCopyWith<$Res> {
  _$NissayTotalDetailsModelCopyWithImpl(this._self, this._then);

  final NissayTotalDetailsModel _self;
  final $Res Function(NissayTotalDetailsModel) _then;

/// Create a copy of NissayTotalDetailsModel
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


/// Adds pattern-matching-related methods to [NissayTotalDetailsModel].
extension NissayTotalDetailsModelPatterns on NissayTotalDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayTotalDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayTotalDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayTotalDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayTotalDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayTotalDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayTotalDetailsModel() when $default != null:
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
case _NissayTotalDetailsModel() when $default != null:
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
case _NissayTotalDetailsModel():
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
case _NissayTotalDetailsModel() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayTotalDetailsModel implements NissayTotalDetailsModel {
  const _NissayTotalDetailsModel({required this.operationType, required this.productName, required this.totalAsset, required this.profitLoss, required this.assetRatio});
  

// 運用タイプ
@override final  String operationType;
// 商品名
@override final  String productName;
// 総資産評価額
@override final  int totalAsset;
// 評価損益
@override final  int profitLoss;
// 資産比率
@override final  double assetRatio;

/// Create a copy of NissayTotalDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayTotalDetailsModelCopyWith<_NissayTotalDetailsModel> get copyWith => __$NissayTotalDetailsModelCopyWithImpl<_NissayTotalDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayTotalDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayTotalDetailsModel(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayTotalDetailsModelCopyWith<$Res> implements $NissayTotalDetailsModelCopyWith<$Res> {
  factory _$NissayTotalDetailsModelCopyWith(_NissayTotalDetailsModel value, $Res Function(_NissayTotalDetailsModel) _then) = __$NissayTotalDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class __$NissayTotalDetailsModelCopyWithImpl<$Res>
    implements _$NissayTotalDetailsModelCopyWith<$Res> {
  __$NissayTotalDetailsModelCopyWithImpl(this._self, this._then);

  final _NissayTotalDetailsModel _self;
  final $Res Function(_NissayTotalDetailsModel) _then;

/// Create a copy of NissayTotalDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,}) {
  return _then(_NissayTotalDetailsModel(
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
mixin _$NissayCurrentPremiumModel {

// プラン名
 String get planName;// 最終ログイン日時
 DateTime get lastLogin;// 今月の掛け金
 int get totalContribution;// 次の拠出日
 DateTime get contributionDate;// 照会日時
 DateTime get date;// 運用商品の詳細
 List<NissayPremiumDetailsModel> get details;
/// Create a copy of NissayCurrentPremiumModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayCurrentPremiumModelCopyWith<NissayCurrentPremiumModel> get copyWith => _$NissayCurrentPremiumModelCopyWithImpl<NissayCurrentPremiumModel>(this as NissayCurrentPremiumModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayCurrentPremiumModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.details, details));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalContribution,contributionDate,date,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'NissayCurrentPremiumModel(planName: $planName, lastLogin: $lastLogin, totalContribution: $totalContribution, contributionDate: $contributionDate, date: $date, details: $details)';
}


}

/// @nodoc
abstract mixin class $NissayCurrentPremiumModelCopyWith<$Res>  {
  factory $NissayCurrentPremiumModelCopyWith(NissayCurrentPremiumModel value, $Res Function(NissayCurrentPremiumModel) _then) = _$NissayCurrentPremiumModelCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, int totalContribution, DateTime contributionDate, DateTime date, List<NissayPremiumDetailsModel> details
});




}
/// @nodoc
class _$NissayCurrentPremiumModelCopyWithImpl<$Res>
    implements $NissayCurrentPremiumModelCopyWith<$Res> {
  _$NissayCurrentPremiumModelCopyWithImpl(this._self, this._then);

  final NissayCurrentPremiumModel _self;
  final $Res Function(NissayCurrentPremiumModel) _then;

/// Create a copy of NissayCurrentPremiumModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? totalContribution = null,Object? contributionDate = null,Object? date = null,Object? details = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<NissayPremiumDetailsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayCurrentPremiumModel].
extension NissayCurrentPremiumModelPatterns on NissayCurrentPremiumModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayCurrentPremiumModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayCurrentPremiumModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayCurrentPremiumModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalContribution,  DateTime contributionDate,  DateTime date,  List<NissayPremiumDetailsModel> details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalContribution,_that.contributionDate,_that.date,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalContribution,  DateTime contributionDate,  DateTime date,  List<NissayPremiumDetailsModel> details)  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel():
return $default(_that.planName,_that.lastLogin,_that.totalContribution,_that.contributionDate,_that.date,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  int totalContribution,  DateTime contributionDate,  DateTime date,  List<NissayPremiumDetailsModel> details)?  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentPremiumModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalContribution,_that.contributionDate,_that.date,_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _NissayCurrentPremiumModel implements NissayCurrentPremiumModel {
  const _NissayCurrentPremiumModel({required this.planName, required this.lastLogin, required this.totalContribution, required this.contributionDate, required this.date, required final  List<NissayPremiumDetailsModel> details}): _details = details;
  

// プラン名
@override final  String planName;
// 最終ログイン日時
@override final  DateTime lastLogin;
// 今月の掛け金
@override final  int totalContribution;
// 次の拠出日
@override final  DateTime contributionDate;
// 照会日時
@override final  DateTime date;
// 運用商品の詳細
 final  List<NissayPremiumDetailsModel> _details;
// 運用商品の詳細
@override List<NissayPremiumDetailsModel> get details {
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_details);
}


/// Create a copy of NissayCurrentPremiumModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayCurrentPremiumModelCopyWith<_NissayCurrentPremiumModel> get copyWith => __$NissayCurrentPremiumModelCopyWithImpl<_NissayCurrentPremiumModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayCurrentPremiumModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._details, _details));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalContribution,contributionDate,date,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'NissayCurrentPremiumModel(planName: $planName, lastLogin: $lastLogin, totalContribution: $totalContribution, contributionDate: $contributionDate, date: $date, details: $details)';
}


}

/// @nodoc
abstract mixin class _$NissayCurrentPremiumModelCopyWith<$Res> implements $NissayCurrentPremiumModelCopyWith<$Res> {
  factory _$NissayCurrentPremiumModelCopyWith(_NissayCurrentPremiumModel value, $Res Function(_NissayCurrentPremiumModel) _then) = __$NissayCurrentPremiumModelCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, int totalContribution, DateTime contributionDate, DateTime date, List<NissayPremiumDetailsModel> details
});




}
/// @nodoc
class __$NissayCurrentPremiumModelCopyWithImpl<$Res>
    implements _$NissayCurrentPremiumModelCopyWith<$Res> {
  __$NissayCurrentPremiumModelCopyWithImpl(this._self, this._then);

  final _NissayCurrentPremiumModel _self;
  final $Res Function(_NissayCurrentPremiumModel) _then;

/// Create a copy of NissayCurrentPremiumModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? totalContribution = null,Object? contributionDate = null,Object? date = null,Object? details = null,}) {
  return _then(_NissayCurrentPremiumModel(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<NissayPremiumDetailsModel>,
  ));
}


}

/// @nodoc
mixin _$NissayPremiumDetailsModel {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 運用割合
 double get contributionRatio;
/// Create a copy of NissayPremiumDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayPremiumDetailsModelCopyWith<NissayPremiumDetailsModel> get copyWith => _$NissayPremiumDetailsModelCopyWithImpl<NissayPremiumDetailsModel>(this as NissayPremiumDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayPremiumDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.contributionRatio, contributionRatio) || other.contributionRatio == contributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,contributionRatio);

@override
String toString() {
  return 'NissayPremiumDetailsModel(operationType: $operationType, productName: $productName, contributionRatio: $contributionRatio)';
}


}

/// @nodoc
abstract mixin class $NissayPremiumDetailsModelCopyWith<$Res>  {
  factory $NissayPremiumDetailsModelCopyWith(NissayPremiumDetailsModel value, $Res Function(NissayPremiumDetailsModel) _then) = _$NissayPremiumDetailsModelCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, double contributionRatio
});




}
/// @nodoc
class _$NissayPremiumDetailsModelCopyWithImpl<$Res>
    implements $NissayPremiumDetailsModelCopyWith<$Res> {
  _$NissayPremiumDetailsModelCopyWithImpl(this._self, this._then);

  final NissayPremiumDetailsModel _self;
  final $Res Function(NissayPremiumDetailsModel) _then;

/// Create a copy of NissayPremiumDetailsModel
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


/// Adds pattern-matching-related methods to [NissayPremiumDetailsModel].
extension NissayPremiumDetailsModelPatterns on NissayPremiumDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayPremiumDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayPremiumDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayPremiumDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayPremiumDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayPremiumDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayPremiumDetailsModel() when $default != null:
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
case _NissayPremiumDetailsModel() when $default != null:
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
case _NissayPremiumDetailsModel():
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
case _NissayPremiumDetailsModel() when $default != null:
return $default(_that.operationType,_that.productName,_that.contributionRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayPremiumDetailsModel implements NissayPremiumDetailsModel {
  const _NissayPremiumDetailsModel({required this.operationType, required this.productName, required this.contributionRatio});
  

// 運用タイプ
@override final  String operationType;
// 商品名
@override final  String productName;
// 運用割合
@override final  double contributionRatio;

/// Create a copy of NissayPremiumDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayPremiumDetailsModelCopyWith<_NissayPremiumDetailsModel> get copyWith => __$NissayPremiumDetailsModelCopyWithImpl<_NissayPremiumDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayPremiumDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.contributionRatio, contributionRatio) || other.contributionRatio == contributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,contributionRatio);

@override
String toString() {
  return 'NissayPremiumDetailsModel(operationType: $operationType, productName: $productName, contributionRatio: $contributionRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayPremiumDetailsModelCopyWith<$Res> implements $NissayPremiumDetailsModelCopyWith<$Res> {
  factory _$NissayPremiumDetailsModelCopyWith(_NissayPremiumDetailsModel value, $Res Function(_NissayPremiumDetailsModel) _then) = __$NissayPremiumDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, double contributionRatio
});




}
/// @nodoc
class __$NissayPremiumDetailsModelCopyWithImpl<$Res>
    implements _$NissayPremiumDetailsModelCopyWith<$Res> {
  __$NissayPremiumDetailsModelCopyWithImpl(this._self, this._then);

  final _NissayPremiumDetailsModel _self;
  final $Res Function(_NissayPremiumDetailsModel) _then;

/// Create a copy of NissayPremiumDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? contributionRatio = null,}) {
  return _then(_NissayPremiumDetailsModel(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,contributionRatio: null == contributionRatio ? _self.contributionRatio : contributionRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$NissayHistoryAssetsModel {

// プラン名
 String get planName;// 最終ログイン日時
 DateTime get lastLogin;// これまでの資産の履歴
 List<NissayHistoryAssetsDetailModel> get history;
/// Create a copy of NissayHistoryAssetsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHistoryAssetsModelCopyWith<NissayHistoryAssetsModel> get copyWith => _$NissayHistoryAssetsModelCopyWithImpl<NissayHistoryAssetsModel>(this as NissayHistoryAssetsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHistoryAssetsModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'NissayHistoryAssetsModel(planName: $planName, lastLogin: $lastLogin, history: $history)';
}


}

/// @nodoc
abstract mixin class $NissayHistoryAssetsModelCopyWith<$Res>  {
  factory $NissayHistoryAssetsModelCopyWith(NissayHistoryAssetsModel value, $Res Function(NissayHistoryAssetsModel) _then) = _$NissayHistoryAssetsModelCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, List<NissayHistoryAssetsDetailModel> history
});




}
/// @nodoc
class _$NissayHistoryAssetsModelCopyWithImpl<$Res>
    implements $NissayHistoryAssetsModelCopyWith<$Res> {
  _$NissayHistoryAssetsModelCopyWithImpl(this._self, this._then);

  final NissayHistoryAssetsModel _self;
  final $Res Function(NissayHistoryAssetsModel) _then;

/// Create a copy of NissayHistoryAssetsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? history = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<NissayHistoryAssetsDetailModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayHistoryAssetsModel].
extension NissayHistoryAssetsModelPatterns on NissayHistoryAssetsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHistoryAssetsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHistoryAssetsModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHistoryAssetsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  List<NissayHistoryAssetsDetailModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  List<NissayHistoryAssetsDetailModel> history)  $default,) {final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel():
return $default(_that.planName,_that.lastLogin,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  List<NissayHistoryAssetsDetailModel> history)?  $default,) {final _that = this;
switch (_that) {
case _NissayHistoryAssetsModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHistoryAssetsModel implements NissayHistoryAssetsModel {
  const _NissayHistoryAssetsModel({required this.planName, required this.lastLogin, required final  List<NissayHistoryAssetsDetailModel> history}): _history = history;
  

// プラン名
@override final  String planName;
// 最終ログイン日時
@override final  DateTime lastLogin;
// これまでの資産の履歴
 final  List<NissayHistoryAssetsDetailModel> _history;
// これまでの資産の履歴
@override List<NissayHistoryAssetsDetailModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of NissayHistoryAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHistoryAssetsModelCopyWith<_NissayHistoryAssetsModel> get copyWith => __$NissayHistoryAssetsModelCopyWithImpl<_NissayHistoryAssetsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHistoryAssetsModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'NissayHistoryAssetsModel(planName: $planName, lastLogin: $lastLogin, history: $history)';
}


}

/// @nodoc
abstract mixin class _$NissayHistoryAssetsModelCopyWith<$Res> implements $NissayHistoryAssetsModelCopyWith<$Res> {
  factory _$NissayHistoryAssetsModelCopyWith(_NissayHistoryAssetsModel value, $Res Function(_NissayHistoryAssetsModel) _then) = __$NissayHistoryAssetsModelCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, List<NissayHistoryAssetsDetailModel> history
});




}
/// @nodoc
class __$NissayHistoryAssetsModelCopyWithImpl<$Res>
    implements _$NissayHistoryAssetsModelCopyWith<$Res> {
  __$NissayHistoryAssetsModelCopyWithImpl(this._self, this._then);

  final _NissayHistoryAssetsModel _self;
  final $Res Function(_NissayHistoryAssetsModel) _then;

/// Create a copy of NissayHistoryAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? history = null,}) {
  return _then(_NissayHistoryAssetsModel(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<NissayHistoryAssetsDetailModel>,
  ));
}


}

/// @nodoc
mixin _$NissayHistoryAssetsDetailModel {

// 日付
 DateTime get date;// 拠出金額累計
 int get totalAsset;// 総資産評価額
 int get totalContribution;// 評価損益
 int get totalProfitLoss;
/// Create a copy of NissayHistoryAssetsDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHistoryAssetsDetailModelCopyWith<NissayHistoryAssetsDetailModel> get copyWith => _$NissayHistoryAssetsDetailModelCopyWithImpl<NissayHistoryAssetsDetailModel>(this as NissayHistoryAssetsDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHistoryAssetsDetailModel&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoryAssetsDetailModel(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class $NissayHistoryAssetsDetailModelCopyWith<$Res>  {
  factory $NissayHistoryAssetsDetailModelCopyWith(NissayHistoryAssetsDetailModel value, $Res Function(NissayHistoryAssetsDetailModel) _then) = _$NissayHistoryAssetsDetailModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class _$NissayHistoryAssetsDetailModelCopyWithImpl<$Res>
    implements $NissayHistoryAssetsDetailModelCopyWith<$Res> {
  _$NissayHistoryAssetsDetailModelCopyWithImpl(this._self, this._then);

  final NissayHistoryAssetsDetailModel _self;
  final $Res Function(NissayHistoryAssetsDetailModel) _then;

/// Create a copy of NissayHistoryAssetsDetailModel
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


/// Adds pattern-matching-related methods to [NissayHistoryAssetsDetailModel].
extension NissayHistoryAssetsDetailModelPatterns on NissayHistoryAssetsDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHistoryAssetsDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHistoryAssetsDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHistoryAssetsDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryAssetsDetailModel() when $default != null:
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
case _NissayHistoryAssetsDetailModel() when $default != null:
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
case _NissayHistoryAssetsDetailModel():
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
case _NissayHistoryAssetsDetailModel() when $default != null:
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHistoryAssetsDetailModel implements NissayHistoryAssetsDetailModel {
  const _NissayHistoryAssetsDetailModel({required this.date, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss});
  

// 日付
@override final  DateTime date;
// 拠出金額累計
@override final  int totalAsset;
// 総資産評価額
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;

/// Create a copy of NissayHistoryAssetsDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHistoryAssetsDetailModelCopyWith<_NissayHistoryAssetsDetailModel> get copyWith => __$NissayHistoryAssetsDetailModelCopyWithImpl<_NissayHistoryAssetsDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHistoryAssetsDetailModel&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoryAssetsDetailModel(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class _$NissayHistoryAssetsDetailModelCopyWith<$Res> implements $NissayHistoryAssetsDetailModelCopyWith<$Res> {
  factory _$NissayHistoryAssetsDetailModelCopyWith(_NissayHistoryAssetsDetailModel value, $Res Function(_NissayHistoryAssetsDetailModel) _then) = __$NissayHistoryAssetsDetailModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class __$NissayHistoryAssetsDetailModelCopyWithImpl<$Res>
    implements _$NissayHistoryAssetsDetailModelCopyWith<$Res> {
  __$NissayHistoryAssetsDetailModelCopyWithImpl(this._self, this._then);

  final _NissayHistoryAssetsDetailModel _self;
  final $Res Function(_NissayHistoryAssetsDetailModel) _then;

/// Create a copy of NissayHistoryAssetsDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,}) {
  return _then(_NissayHistoryAssetsDetailModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
