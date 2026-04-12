// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nissay_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NissayDashboard {

// 加入者名
 String get userName;// プラン名
 String get planName;// 前回ログイン日時
 DateTime get lastLogin;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;// 利回り
 double get roi;// 照会日時
 DateTime get date;// 次回拠出予定の掛金額
 int get contributionAmount;// 次回拠出日
 DateTime get contributionDate;// 内訳
 List<NissayDashboardHolding> get holdings;// 資産推移
 List<NissayDashboardHistoryEntry> get historyEntries;
/// Create a copy of NissayDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayDashboardCopyWith<NissayDashboard> get copyWith => _$NissayDashboardCopyWithImpl<NissayDashboard>(this as NissayDashboard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayDashboard&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&(identical(other.contributionAmount, contributionAmount) || other.contributionAmount == contributionAmount)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&const DeepCollectionEquality().equals(other.holdings, holdings)&&const DeepCollectionEquality().equals(other.historyEntries, historyEntries));
}


@override
int get hashCode => Object.hash(runtimeType,userName,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,contributionAmount,contributionDate,const DeepCollectionEquality().hash(holdings),const DeepCollectionEquality().hash(historyEntries));

@override
String toString() {
  return 'NissayDashboard(userName: $userName, planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, contributionAmount: $contributionAmount, contributionDate: $contributionDate, holdings: $holdings, historyEntries: $historyEntries)';
}


}

/// @nodoc
abstract mixin class $NissayDashboardCopyWith<$Res>  {
  factory $NissayDashboardCopyWith(NissayDashboard value, $Res Function(NissayDashboard) _then) = _$NissayDashboardCopyWithImpl;
@useResult
$Res call({
 String userName, String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, int contributionAmount, DateTime contributionDate, List<NissayDashboardHolding> holdings, List<NissayDashboardHistoryEntry> historyEntries
});




}
/// @nodoc
class _$NissayDashboardCopyWithImpl<$Res>
    implements $NissayDashboardCopyWith<$Res> {
  _$NissayDashboardCopyWithImpl(this._self, this._then);

  final NissayDashboard _self;
  final $Res Function(NissayDashboard) _then;

/// Create a copy of NissayDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? contributionAmount = null,Object? contributionDate = null,Object? holdings = null,Object? historyEntries = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,contributionAmount: null == contributionAmount ? _self.contributionAmount : contributionAmount // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<NissayDashboardHolding>,historyEntries: null == historyEntries ? _self.historyEntries : historyEntries // ignore: cast_nullable_to_non_nullable
as List<NissayDashboardHistoryEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayDashboard].
extension NissayDashboardPatterns on NissayDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayDashboard value)  $default,){
final _that = this;
switch (_that) {
case _NissayDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _NissayDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contributionAmount,  DateTime contributionDate,  List<NissayDashboardHolding> holdings,  List<NissayDashboardHistoryEntry> historyEntries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayDashboard() when $default != null:
return $default(_that.userName,_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contributionAmount,_that.contributionDate,_that.holdings,_that.historyEntries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contributionAmount,  DateTime contributionDate,  List<NissayDashboardHolding> holdings,  List<NissayDashboardHistoryEntry> historyEntries)  $default,) {final _that = this;
switch (_that) {
case _NissayDashboard():
return $default(_that.userName,_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contributionAmount,_that.contributionDate,_that.holdings,_that.historyEntries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  String planName,  DateTime lastLogin,  int totalAsset,  int totalContribution,  int totalProfitLoss,  double roi,  DateTime date,  int contributionAmount,  DateTime contributionDate,  List<NissayDashboardHolding> holdings,  List<NissayDashboardHistoryEntry> historyEntries)?  $default,) {final _that = this;
switch (_that) {
case _NissayDashboard() when $default != null:
return $default(_that.userName,_that.planName,_that.lastLogin,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss,_that.roi,_that.date,_that.contributionAmount,_that.contributionDate,_that.holdings,_that.historyEntries);case _:
  return null;

}
}

}

/// @nodoc


class _NissayDashboard implements NissayDashboard {
  const _NissayDashboard({required this.userName, required this.planName, required this.lastLogin, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss, required this.roi, required this.date, required this.contributionAmount, required this.contributionDate, required final  List<NissayDashboardHolding> holdings, required final  List<NissayDashboardHistoryEntry> historyEntries}): _holdings = holdings,_historyEntries = historyEntries;
  

// 加入者名
@override final  String userName;
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
// 次回拠出予定の掛金額
@override final  int contributionAmount;
// 次回拠出日
@override final  DateTime contributionDate;
// 内訳
 final  List<NissayDashboardHolding> _holdings;
// 内訳
@override List<NissayDashboardHolding> get holdings {
  if (_holdings is EqualUnmodifiableListView) return _holdings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holdings);
}

// 資産推移
 final  List<NissayDashboardHistoryEntry> _historyEntries;
// 資産推移
@override List<NissayDashboardHistoryEntry> get historyEntries {
  if (_historyEntries is EqualUnmodifiableListView) return _historyEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historyEntries);
}


/// Create a copy of NissayDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayDashboardCopyWith<_NissayDashboard> get copyWith => __$NissayDashboardCopyWithImpl<_NissayDashboard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayDashboard&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.date, date) || other.date == date)&&(identical(other.contributionAmount, contributionAmount) || other.contributionAmount == contributionAmount)&&(identical(other.contributionDate, contributionDate) || other.contributionDate == contributionDate)&&const DeepCollectionEquality().equals(other._holdings, _holdings)&&const DeepCollectionEquality().equals(other._historyEntries, _historyEntries));
}


@override
int get hashCode => Object.hash(runtimeType,userName,planName,lastLogin,totalAsset,totalContribution,totalProfitLoss,roi,date,contributionAmount,contributionDate,const DeepCollectionEquality().hash(_holdings),const DeepCollectionEquality().hash(_historyEntries));

@override
String toString() {
  return 'NissayDashboard(userName: $userName, planName: $planName, lastLogin: $lastLogin, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss, roi: $roi, date: $date, contributionAmount: $contributionAmount, contributionDate: $contributionDate, holdings: $holdings, historyEntries: $historyEntries)';
}


}

/// @nodoc
abstract mixin class _$NissayDashboardCopyWith<$Res> implements $NissayDashboardCopyWith<$Res> {
  factory _$NissayDashboardCopyWith(_NissayDashboard value, $Res Function(_NissayDashboard) _then) = __$NissayDashboardCopyWithImpl;
@override @useResult
$Res call({
 String userName, String planName, DateTime lastLogin, int totalAsset, int totalContribution, int totalProfitLoss, double roi, DateTime date, int contributionAmount, DateTime contributionDate, List<NissayDashboardHolding> holdings, List<NissayDashboardHistoryEntry> historyEntries
});




}
/// @nodoc
class __$NissayDashboardCopyWithImpl<$Res>
    implements _$NissayDashboardCopyWith<$Res> {
  __$NissayDashboardCopyWithImpl(this._self, this._then);

  final _NissayDashboard _self;
  final $Res Function(_NissayDashboard) _then;

/// Create a copy of NissayDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? planName = null,Object? lastLogin = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,Object? roi = null,Object? date = null,Object? contributionAmount = null,Object? contributionDate = null,Object? holdings = null,Object? historyEntries = null,}) {
  return _then(_NissayDashboard(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,contributionAmount: null == contributionAmount ? _self.contributionAmount : contributionAmount // ignore: cast_nullable_to_non_nullable
as int,contributionDate: null == contributionDate ? _self.contributionDate : contributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,holdings: null == holdings ? _self._holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<NissayDashboardHolding>,historyEntries: null == historyEntries ? _self._historyEntries : historyEntries // ignore: cast_nullable_to_non_nullable
as List<NissayDashboardHistoryEntry>,
  ));
}


}

/// @nodoc
mixin _$NissayDashboardHolding {

// 運用タイプ
 String get operationType;// 商品名
 String get productName;// 資産評価額
 int get totalAsset;// 評価損益
 int get profitLoss;// 資産比率
 double get assetRatio;// 次回掛金の運用割合
 double? get nextContributionRatio;
/// Create a copy of NissayDashboardHolding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayDashboardHoldingCopyWith<NissayDashboardHolding> get copyWith => _$NissayDashboardHoldingCopyWithImpl<NissayDashboardHolding>(this as NissayDashboardHolding, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayDashboardHolding&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio)&&(identical(other.nextContributionRatio, nextContributionRatio) || other.nextContributionRatio == nextContributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio,nextContributionRatio);

@override
String toString() {
  return 'NissayDashboardHolding(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio, nextContributionRatio: $nextContributionRatio)';
}


}

/// @nodoc
abstract mixin class $NissayDashboardHoldingCopyWith<$Res>  {
  factory $NissayDashboardHoldingCopyWith(NissayDashboardHolding value, $Res Function(NissayDashboardHolding) _then) = _$NissayDashboardHoldingCopyWithImpl;
@useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio, double? nextContributionRatio
});




}
/// @nodoc
class _$NissayDashboardHoldingCopyWithImpl<$Res>
    implements $NissayDashboardHoldingCopyWith<$Res> {
  _$NissayDashboardHoldingCopyWithImpl(this._self, this._then);

  final NissayDashboardHolding _self;
  final $Res Function(NissayDashboardHolding) _then;

/// Create a copy of NissayDashboardHolding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,Object? nextContributionRatio = freezed,}) {
  return _then(_self.copyWith(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,nextContributionRatio: freezed == nextContributionRatio ? _self.nextContributionRatio : nextContributionRatio // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [NissayDashboardHolding].
extension NissayDashboardHoldingPatterns on NissayDashboardHolding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayDashboardHolding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayDashboardHolding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayDashboardHolding value)  $default,){
final _that = this;
switch (_that) {
case _NissayDashboardHolding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayDashboardHolding value)?  $default,){
final _that = this;
switch (_that) {
case _NissayDashboardHolding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double? nextContributionRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NissayDashboardHolding() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.nextContributionRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double? nextContributionRatio)  $default,) {final _that = this;
switch (_that) {
case _NissayDashboardHolding():
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.nextContributionRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String operationType,  String productName,  int totalAsset,  int profitLoss,  double assetRatio,  double? nextContributionRatio)?  $default,) {final _that = this;
switch (_that) {
case _NissayDashboardHolding() when $default != null:
return $default(_that.operationType,_that.productName,_that.totalAsset,_that.profitLoss,_that.assetRatio,_that.nextContributionRatio);case _:
  return null;

}
}

}

/// @nodoc


class _NissayDashboardHolding implements NissayDashboardHolding {
  const _NissayDashboardHolding({required this.operationType, required this.productName, required this.totalAsset, required this.profitLoss, required this.assetRatio, required this.nextContributionRatio});
  

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
// 次回掛金の運用割合
@override final  double? nextContributionRatio;

/// Create a copy of NissayDashboardHolding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayDashboardHoldingCopyWith<_NissayDashboardHolding> get copyWith => __$NissayDashboardHoldingCopyWithImpl<_NissayDashboardHolding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayDashboardHolding&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.profitLoss, profitLoss) || other.profitLoss == profitLoss)&&(identical(other.assetRatio, assetRatio) || other.assetRatio == assetRatio)&&(identical(other.nextContributionRatio, nextContributionRatio) || other.nextContributionRatio == nextContributionRatio));
}


@override
int get hashCode => Object.hash(runtimeType,operationType,productName,totalAsset,profitLoss,assetRatio,nextContributionRatio);

@override
String toString() {
  return 'NissayDashboardHolding(operationType: $operationType, productName: $productName, totalAsset: $totalAsset, profitLoss: $profitLoss, assetRatio: $assetRatio, nextContributionRatio: $nextContributionRatio)';
}


}

/// @nodoc
abstract mixin class _$NissayDashboardHoldingCopyWith<$Res> implements $NissayDashboardHoldingCopyWith<$Res> {
  factory _$NissayDashboardHoldingCopyWith(_NissayDashboardHolding value, $Res Function(_NissayDashboardHolding) _then) = __$NissayDashboardHoldingCopyWithImpl;
@override @useResult
$Res call({
 String operationType, String productName, int totalAsset, int profitLoss, double assetRatio, double? nextContributionRatio
});




}
/// @nodoc
class __$NissayDashboardHoldingCopyWithImpl<$Res>
    implements _$NissayDashboardHoldingCopyWith<$Res> {
  __$NissayDashboardHoldingCopyWithImpl(this._self, this._then);

  final _NissayDashboardHolding _self;
  final $Res Function(_NissayDashboardHolding) _then;

/// Create a copy of NissayDashboardHolding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationType = null,Object? productName = null,Object? totalAsset = null,Object? profitLoss = null,Object? assetRatio = null,Object? nextContributionRatio = freezed,}) {
  return _then(_NissayDashboardHolding(
operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,profitLoss: null == profitLoss ? _self.profitLoss : profitLoss // ignore: cast_nullable_to_non_nullable
as int,assetRatio: null == assetRatio ? _self.assetRatio : assetRatio // ignore: cast_nullable_to_non_nullable
as double,nextContributionRatio: freezed == nextContributionRatio ? _self.nextContributionRatio : nextContributionRatio // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
mixin _$NissayDashboardHistoryEntry {

// 年月
 DateTime get date;// 総資産評価額
 int get totalAsset;// 拠出金額累計
 int get totalContribution;// 評価損益
 int get totalProfitLoss;
/// Create a copy of NissayDashboardHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NissayDashboardHistoryEntryCopyWith<NissayDashboardHistoryEntry> get copyWith => _$NissayDashboardHistoryEntryCopyWithImpl<NissayDashboardHistoryEntry>(this as NissayDashboardHistoryEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NissayDashboardHistoryEntry&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayDashboardHistoryEntry(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class $NissayDashboardHistoryEntryCopyWith<$Res>  {
  factory $NissayDashboardHistoryEntryCopyWith(NissayDashboardHistoryEntry value, $Res Function(NissayDashboardHistoryEntry) _then) = _$NissayDashboardHistoryEntryCopyWithImpl;
@useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class _$NissayDashboardHistoryEntryCopyWithImpl<$Res>
    implements $NissayDashboardHistoryEntryCopyWith<$Res> {
  _$NissayDashboardHistoryEntryCopyWithImpl(this._self, this._then);

  final NissayDashboardHistoryEntry _self;
  final $Res Function(NissayDashboardHistoryEntry) _then;

/// Create a copy of NissayDashboardHistoryEntry
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


/// Adds pattern-matching-related methods to [NissayDashboardHistoryEntry].
extension NissayDashboardHistoryEntryPatterns on NissayDashboardHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NissayDashboardHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NissayDashboardHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NissayDashboardHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _NissayDashboardHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NissayDashboardHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _NissayDashboardHistoryEntry() when $default != null:
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
case _NissayDashboardHistoryEntry() when $default != null:
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
case _NissayDashboardHistoryEntry():
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
case _NissayDashboardHistoryEntry() when $default != null:
return $default(_that.date,_that.totalAsset,_that.totalContribution,_that.totalProfitLoss);case _:
  return null;

}
}

}

/// @nodoc


class _NissayDashboardHistoryEntry implements NissayDashboardHistoryEntry {
  const _NissayDashboardHistoryEntry({required this.date, required this.totalAsset, required this.totalContribution, required this.totalProfitLoss});
  

// 年月
@override final  DateTime date;
// 総資産評価額
@override final  int totalAsset;
// 拠出金額累計
@override final  int totalContribution;
// 評価損益
@override final  int totalProfitLoss;

/// Create a copy of NissayDashboardHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NissayDashboardHistoryEntryCopyWith<_NissayDashboardHistoryEntry> get copyWith => __$NissayDashboardHistoryEntryCopyWithImpl<_NissayDashboardHistoryEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NissayDashboardHistoryEntry&&(identical(other.date, date) || other.date == date)&&(identical(other.totalAsset, totalAsset) || other.totalAsset == totalAsset)&&(identical(other.totalContribution, totalContribution) || other.totalContribution == totalContribution)&&(identical(other.totalProfitLoss, totalProfitLoss) || other.totalProfitLoss == totalProfitLoss));
}


@override
int get hashCode => Object.hash(runtimeType,date,totalAsset,totalContribution,totalProfitLoss);

@override
String toString() {
  return 'NissayDashboardHistoryEntry(date: $date, totalAsset: $totalAsset, totalContribution: $totalContribution, totalProfitLoss: $totalProfitLoss)';
}


}

/// @nodoc
abstract mixin class _$NissayDashboardHistoryEntryCopyWith<$Res> implements $NissayDashboardHistoryEntryCopyWith<$Res> {
  factory _$NissayDashboardHistoryEntryCopyWith(_NissayDashboardHistoryEntry value, $Res Function(_NissayDashboardHistoryEntry) _then) = __$NissayDashboardHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int totalAsset, int totalContribution, int totalProfitLoss
});




}
/// @nodoc
class __$NissayDashboardHistoryEntryCopyWithImpl<$Res>
    implements _$NissayDashboardHistoryEntryCopyWith<$Res> {
  __$NissayDashboardHistoryEntryCopyWithImpl(this._self, this._then);

  final _NissayDashboardHistoryEntry _self;
  final $Res Function(_NissayDashboardHistoryEntry) _then;

/// Create a copy of NissayDashboardHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? totalAsset = null,Object? totalContribution = null,Object? totalProfitLoss = null,}) {
  return _then(_NissayDashboardHistoryEntry(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,totalAsset: null == totalAsset ? _self.totalAsset : totalAsset // ignore: cast_nullable_to_non_nullable
as int,totalContribution: null == totalContribution ? _self.totalContribution : totalContribution // ignore: cast_nullable_to_non_nullable
as int,totalProfitLoss: null == totalProfitLoss ? _self.totalProfitLoss : totalProfitLoss // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
