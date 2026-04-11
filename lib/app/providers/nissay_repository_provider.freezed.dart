// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nissay_repository_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NissayModel {

// プラン名
 String get planName;// 最終ログイン日時
 DateTime get lastLogin;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;// 照会日時
 DateTime get date;// 掛金額
 int get contribution;// 次の拠出日
 DateTime get contributionDate;// 運用商品の詳細
 List<NissayDetailsModel> get details;// これまでの資産の履歴
 List<NissayHistoryModel> get history;
/// Create a copy of NissayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayModelCopyWith<NissayModel> get copyWith => _$NissayModelCopyWithImpl<NissayModel>(this as NissayModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&const DeepCollectionEquality().equals(other.details, details)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,contribution,contributionDate,const DeepCollectionEquality().hash(details),const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'NissayModel(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, contribution: $contribution, contributionDate: $contributionDate, details: $details, history: $history)';
}


}

/// @nodoc
abstract mixin class $NissayModelCopyWith<$Res>  {
  factory $NissayModelCopyWith(NissayModel value, $Res Function(NissayModel) _then) = _$NissayModelCopyWithImpl;
@useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, int contribution, DateTime contributionDate, List<NissayDetailsModel> details, List<NissayHistoryModel> history
});




}
/// @nodoc
class _$NissayModelCopyWithImpl<$Res>
    implements $NissayModelCopyWith<$Res> {
  _$NissayModelCopyWithImpl(this._self, this._then);

  final NissayModel _self;
  final $Res Function(NissayModel) _then;

/// Create a copy of NissayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? contribution = null,Object? contributionDate = null,Object? details = null,Object? history = null,}) {
  return _then(_self.copyWith(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<NissayDetailsModel>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<NissayHistoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayModel].
extension NissayModelPatterns on NissayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contribution,  DateTime contributionDate,  List<NissayDetailsModel> details,  List<NissayHistoryModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contribution,_that.contributionDate,_that.details,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contribution,  DateTime contributionDate,  List<NissayDetailsModel> details,  List<NissayHistoryModel> history)  $default,) {final _that = this;
switch (_that) {
case _NissayModel():
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contribution,_that.contributionDate,_that.details,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contribution,  DateTime contributionDate,  List<NissayDetailsModel> details,  List<NissayHistoryModel> history)?  $default,) {final _that = this;
switch (_that) {
case _NissayModel() when $default != null:
return $default(_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contribution,_that.contributionDate,_that.details,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _NissayModel implements NissayModel {
  const _NissayModel({required this.planName, required this.lastLogin, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi, required this.date, required this.contribution, required this.contributionDate, required final  List<NissayDetailsModel> details, required final  List<NissayHistoryModel> history}): _details = details,_history = history;
  

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
// 掛金額
@override final  int contribution;
// 次の拠出日
@override final  DateTime contributionDate;
// 運用商品の詳細
 final  List<NissayDetailsModel> _details;
// 運用商品の詳細
@override List<NissayDetailsModel> get details {
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_details);
}

// これまでの資産の履歴
 final  List<NissayHistoryModel> _history;
// これまでの資産の履歴
@override List<NissayHistoryModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of NissayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayModelCopyWith<_NissayModel> get copyWith => __$NissayModelCopyWithImpl<_NissayModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayModel&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&(identical(other.contribution, contribution) || other.contribution == contribution)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&const DeepCollectionEquality().equals(other._details, _details)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,contribution,contributionDate,const DeepCollectionEquality().hash(_details),const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'NissayModel(planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, contribution: $contribution, contributionDate: $contributionDate, details: $details, history: $history)';
}


}

/// @nodoc
abstract mixin class _$NissayModelCopyWith<$Res> implements $NissayModelCopyWith<$Res> {
  factory _$NissayModelCopyWith(_NissayModel value, $Res Function(_NissayModel) _then) = __$NissayModelCopyWithImpl;
@override @useResult
$Res call({
 String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, int contribution, DateTime contributionDate, List<NissayDetailsModel> details, List<NissayHistoryModel> history
});




}
/// @nodoc
class __$NissayModelCopyWithImpl<$Res>
    implements _$NissayModelCopyWith<$Res> {
  __$NissayModelCopyWithImpl(this._self, this._then);

  final _NissayModel _self;
  final $Res Function(_NissayModel) _then;

/// Create a copy of NissayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? contribution = null,Object? contributionDate = null,Object? details = null,Object? history = null,}) {
  return _then(_NissayModel(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<NissayDetailsModel>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<NissayHistoryModel>,
  ));
}


}

/// @nodoc
mixin _$NissayDetailsModel {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 総資産評価額
 int get totalAsset;// 評価損益
 int get profitLoss;// 資産比率
 double get assetRatio;// 運用比率
 double get operationRatio;
/// Create a copy of NissayDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayDetailsModelCopyWith<NissayDetailsModel> get copyWith => _$NissayDetailsModelCopyWithImpl<NissayDetailsModel>(this as NissayDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio)&&(identical(other.operationRatio, operationRatio) || other.operationRatio == operationRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio,operationRatio);

@override
String toString() {
  return 'NissayDetailsModel(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio, operationRatio: $operationRatio)';
}


}

/// @nodoc
abstract mixin class $NissayDetailsModelCopyWith<$Res>  {
  factory $NissayDetailsModelCopyWith(NissayDetailsModel value, $Res Function(NissayDetailsModel) _then) = _$NissayDetailsModelCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio, double operationRatio
});




}
/// @nodoc
class _$NissayDetailsModelCopyWithImpl<$Res>
    implements $NissayDetailsModelCopyWith<$Res> {
  _$NissayDetailsModelCopyWithImpl(this._self, this._then);

  final NissayDetailsModel _self;
  final $Res Function(NissayDetailsModel) _then;

/// Create a copy of NissayDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,Object? operationRatio = null,}) {
  return _then(_self.copyWith(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,operationRatio: null == operationRatio ? _self.operationRatio : operationRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayDetailsModel].
extension NissayDetailsModelPatterns on NissayDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double operationRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayDetailsModel() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.operationRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double operationRatio)  $default,) {final _that = this;
switch (_that) {
case _NissayDetailsModel():
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.operationRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double operationRatio)?  $default,) {final _that = this;
switch (_that) {
case _NissayDetailsModel() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.operationRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayDetailsModel implements NissayDetailsModel {
  const _NissayDetailsModel({required this.operationType, required this.productName, required this.totalAsset, required this.profitLoss, required this.assetRatio, required this.operationRatio});
  

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
// 運用比率
@override final  double operationRatio;

/// Create a copy of NissayDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayDetailsModelCopyWith<_NissayDetailsModel> get copyWith => __$NissayDetailsModelCopyWithImpl<_NissayDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayDetailsModel&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio)&&(identical(other.operationRatio, operationRatio) || other.operationRatio == operationRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio,operationRatio);

@override
String toString() {
  return 'NissayDetailsModel(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio, operationRatio: $operationRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayDetailsModelCopyWith<$Res> implements $NissayDetailsModelCopyWith<$Res> {
  factory _$NissayDetailsModelCopyWith(_NissayDetailsModel value, $Res Function(_NissayDetailsModel) _then) = __$NissayDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio, double operationRatio
});




}
/// @nodoc
class __$NissayDetailsModelCopyWithImpl<$Res>
    implements _$NissayDetailsModelCopyWith<$Res> {
  __$NissayDetailsModelCopyWithImpl(this._self, this._then);

  final _NissayDetailsModel _self;
  final $Res Function(_NissayDetailsModel) _then;

/// Create a copy of NissayDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,Object? operationRatio = null,}) {
  return _then(_NissayDetailsModel(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,operationRatio: null == operationRatio ? _self.operationRatio : operationRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$NissayHistoryModel {

// 年月
 DateTime get date;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;
/// Create a copy of NissayHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayHistoryModelCopyWith<NissayHistoryModel> get copyWith => _$NissayHistoryModelCopyWithImpl<NissayHistoryModel>(this as NissayHistoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayHistoryModel&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoryModel(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class $NissayHistoryModelCopyWith<$Res>  {
  factory $NissayHistoryModelCopyWith(NissayHistoryModel value, $Res Function(NissayHistoryModel) _then) = _$NissayHistoryModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class _$NissayHistoryModelCopyWithImpl<$Res>
    implements $NissayHistoryModelCopyWith<$Res> {
  _$NissayHistoryModelCopyWithImpl(this._self, this._then);

  final NissayHistoryModel _self;
  final $Res Function(NissayHistoryModel) _then;

/// Create a copy of NissayHistoryModel
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


/// Adds pattern-matching-related methods to [NissayHistoryModel].
extension NissayHistoryModelPatterns on NissayHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _NissayHistoryModel() when $default != null:
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
case _NissayHistoryModel() when $default != null:
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
case _NissayHistoryModel():
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
case _NissayHistoryModel() when $default != null:
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
  return null;

}
}

}

/// @nodoc


class _NissayHistoryModel implements NissayHistoryModel {
  const _NissayHistoryModel({required this.date, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss});
  

// 年月
@override final  DateTime date;
// 総資産評価額
@override final  int totalAsset;
// 拠出金額累計
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;

/// Create a copy of NissayHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayHistoryModelCopyWith<_NissayHistoryModel> get copyWith => __$NissayHistoryModelCopyWithImpl<_NissayHistoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayHistoryModel&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayHistoryModel(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class _$NissayHistoryModelCopyWith<$Res> implements $NissayHistoryModelCopyWith<$Res> {
  factory _$NissayHistoryModelCopyWith(_NissayHistoryModel value, $Res Function(_NissayHistoryModel) _then) = __$NissayHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class __$NissayHistoryModelCopyWithImpl<$Res>
    implements _$NissayHistoryModelCopyWith<$Res> {
  __$NissayHistoryModelCopyWithImpl(this._self, this._then);

  final _NissayHistoryModel _self;
  final $Res Function(_NissayHistoryModel) _then;

/// Create a copy of NissayHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,}) {
  return _then(_NissayHistoryModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
