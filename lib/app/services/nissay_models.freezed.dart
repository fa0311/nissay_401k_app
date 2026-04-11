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
mixin _$NissayCurrentAssetsModel {

// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;// 照会日時
 DateTime get date;// 運用商品の詳細
 List<NissayTotalDetailsModel> get details;// 運用商品の詳細の合計
 NissayTotalDetailsSumModel? get detailsSum;
/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayCurrentAssetsModelCopyWith<NissayCurrentAssetsModel> get copyWith => _$NissayCurrentAssetsModelCopyWithImpl<NissayCurrentAssetsModel>(this as NissayCurrentAssetsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayCurrentAssetsModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.detailsSum, detailsSum) || other.detailsSum == detailsSum));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(details),detailsSum);

@override
String toString() {
  return 'NissayCurrentAssetsModel(totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, details: $details, detailsSum: $detailsSum)';
}


}

/// @nodoc
abstract mixin class $NissayCurrentAssetsModelCopyWith<$Res>  {
  factory $NissayCurrentAssetsModelCopyWith(NissayCurrentAssetsModel value, $Res Function(NissayCurrentAssetsModel) _then) = _$NissayCurrentAssetsModelCopyWithImpl;
@useResult
$Res call({
 int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayTotalDetailsModel> details, NissayTotalDetailsSumModel? detailsSum
});


$NissayTotalDetailsSumModelCopyWith<$Res>? get detailsSum;

}
/// @nodoc
class _$NissayCurrentAssetsModelCopyWithImpl<$Res>
    implements $NissayCurrentAssetsModelCopyWith<$Res> {
  _$NissayCurrentAssetsModelCopyWithImpl(this._self, this._then);

  final NissayCurrentAssetsModel _self;
  final $Res Function(NissayCurrentAssetsModel) _then;

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? details = null,Object? detailsSum = freezed,}) {
  return _then(_self.copyWith(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<NissayTotalDetailsModel>,detailsSum: freezed == detailsSum ? _self.detailsSum : detailsSum // ignore: cast_nullable_to_non_nullable
as NissayTotalDetailsSumModel?,
  ));
}
/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NissayTotalDetailsSumModelCopyWith<$Res>? get detailsSum {
    if (_self.detailsSum == null) {
    return null;
  }

  return $NissayTotalDetailsSumModelCopyWith<$Res>(_self.detailsSum!, (value) {
    return _then(_self.copyWith(detailsSum: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details,  NissayTotalDetailsSumModel? detailsSum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details,_that.detailsSum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details,  NissayTotalDetailsSumModel? detailsSum)  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel():
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details,_that.detailsSum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  List<NissayTotalDetailsModel> details,  NissayTotalDetailsSumModel? detailsSum)?  $default,) {final _that = this;
switch (_that) {
case _NissayCurrentAssetsModel() when $default != null:
return $default(_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.details,_that.detailsSum);case _:
  return null;

}
}

}

/// @nodoc


class _NissayCurrentAssetsModel implements NissayCurrentAssetsModel {
  const _NissayCurrentAssetsModel({required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi, required this.date, required final  List<NissayTotalDetailsModel> details, this.detailsSum}): _details = details;
  

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

// 運用商品の詳細の合計
@override final  NissayTotalDetailsSumModel? detailsSum;

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayCurrentAssetsModelCopyWith<_NissayCurrentAssetsModel> get copyWith => __$NissayCurrentAssetsModelCopyWithImpl<_NissayCurrentAssetsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayCurrentAssetsModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._details, _details)&&(identical(other.detailsSum, detailsSum) || other.detailsSum == detailsSum));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,totalContribution,totalProfitLoss,roi,date,const DeepCollectionEquality().hash(_details),detailsSum);

@override
String toString() {
  return 'NissayCurrentAssetsModel(totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, details: $details, detailsSum: $detailsSum)';
}


}

/// @nodoc
abstract mixin class _$NissayCurrentAssetsModelCopyWith<$Res> implements $NissayCurrentAssetsModelCopyWith<$Res> {
  factory _$NissayCurrentAssetsModelCopyWith(_NissayCurrentAssetsModel value, $Res Function(_NissayCurrentAssetsModel) _then) = __$NissayCurrentAssetsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, List<NissayTotalDetailsModel> details, NissayTotalDetailsSumModel? detailsSum
});


@override $NissayTotalDetailsSumModelCopyWith<$Res>? get detailsSum;

}
/// @nodoc
class __$NissayCurrentAssetsModelCopyWithImpl<$Res>
    implements _$NissayCurrentAssetsModelCopyWith<$Res> {
  __$NissayCurrentAssetsModelCopyWithImpl(this._self, this._then);

  final _NissayCurrentAssetsModel _self;
  final $Res Function(_NissayCurrentAssetsModel) _then;

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? details = null,Object? detailsSum = freezed,}) {
  return _then(_NissayCurrentAssetsModel(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<NissayTotalDetailsModel>,detailsSum: freezed == detailsSum ? _self.detailsSum : detailsSum // ignore: cast_nullable_to_non_nullable
as NissayTotalDetailsSumModel?,
  ));
}

/// Create a copy of NissayCurrentAssetsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NissayTotalDetailsSumModelCopyWith<$Res>? get detailsSum {
    if (_self.detailsSum == null) {
    return null;
  }

  return $NissayTotalDetailsSumModelCopyWith<$Res>(_self.detailsSum!, (value) {
    return _then(_self.copyWith(detailsSum: value));
  });
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
mixin _$NissayTotalDetailsSumModel {

// 総資産評価額
 int get totalAsset;// 評価損益
 int get profitLoss;// 資産比率
 double get assetRatio;
/// Create a copy of NissayTotalDetailsSumModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayTotalDetailsSumModelCopyWith<NissayTotalDetailsSumModel> get copyWith => _$NissayTotalDetailsSumModelCopyWithImpl<NissayTotalDetailsSumModel>(this as NissayTotalDetailsSumModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayTotalDetailsSumModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayTotalDetailsSumModel(totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class $NissayTotalDetailsSumModelCopyWith<$Res>  {
  factory $NissayTotalDetailsSumModelCopyWith(NissayTotalDetailsSumModel value, $Res Function(NissayTotalDetailsSumModel) _then) = _$NissayTotalDetailsSumModelCopyWithImpl;
@useResult
$Res call({
 int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class _$NissayTotalDetailsSumModelCopyWithImpl<$Res>
    implements $NissayTotalDetailsSumModelCopyWith<$Res> {
  _$NissayTotalDetailsSumModelCopyWithImpl(this._self, this._then);

  final NissayTotalDetailsSumModel _self;
  final $Res Function(NissayTotalDetailsSumModel) _then;

/// Create a copy of NissayTotalDetailsSumModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,}) {
  return _then(_self.copyWith(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayTotalDetailsSumModel].
extension NissayTotalDetailsSumModelPatterns on NissayTotalDetailsSumModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayTotalDetailsSumModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayTotalDetailsSumModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayTotalDetailsSumModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalAsset,  int profitLoss,  double assetRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel() when $default != null:
return $default(_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalAsset,  int profitLoss,  double assetRatio)  $default,) {final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel():
return $default(_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalAsset,  int profitLoss,  double assetRatio)?  $default,) {final _that = this;
switch (_that) {
case _NissayTotalDetailsSumModel() when $default != null:
return $default(_that.totalAsset,_that.profitLoss,_that.assetRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayTotalDetailsSumModel implements NissayTotalDetailsSumModel {
  const _NissayTotalDetailsSumModel({required this.totalAsset, required this.profitLoss, required this.assetRatio});
  

// 総資産評価額
@override final  int totalAsset;
// 評価損益
@override final  int profitLoss;
// 資産比率
@override final  double assetRatio;

/// Create a copy of NissayTotalDetailsSumModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayTotalDetailsSumModelCopyWith<_NissayTotalDetailsSumModel> get copyWith => __$NissayTotalDetailsSumModelCopyWithImpl<_NissayTotalDetailsSumModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayTotalDetailsSumModel&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio));
}


@override
int get hashCode => Object.hash(runtimeType,totalAsset,profitLoss,assetRatio);

@override
String toString() {
  return 'NissayTotalDetailsSumModel(totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayTotalDetailsSumModelCopyWith<$Res> implements $NissayTotalDetailsSumModelCopyWith<$Res> {
  factory _$NissayTotalDetailsSumModelCopyWith(_NissayTotalDetailsSumModel value, $Res Function(_NissayTotalDetailsSumModel) _then) = __$NissayTotalDetailsSumModelCopyWithImpl;
@override @useResult
$Res call({
 int totalAsset, int profitLoss, double assetRatio
});




}
/// @nodoc
class __$NissayTotalDetailsSumModelCopyWithImpl<$Res>
    implements _$NissayTotalDetailsSumModelCopyWith<$Res> {
  __$NissayTotalDetailsSumModelCopyWithImpl(this._self, this._then);

  final _NissayTotalDetailsSumModel _self;
  final $Res Function(_NissayTotalDetailsSumModel) _then;

/// Create a copy of NissayTotalDetailsSumModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,}) {
  return _then(_NissayTotalDetailsSumModel(
totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
