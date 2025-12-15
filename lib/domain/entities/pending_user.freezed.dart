// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PendingUser {

 String get uid; String get status; DateTime get firstScannedAt; DateTime get lastScannedAt;
/// Create a copy of PendingUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingUserCopyWith<PendingUser> get copyWith => _$PendingUserCopyWithImpl<PendingUser>(this as PendingUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstScannedAt, firstScannedAt) || other.firstScannedAt == firstScannedAt)&&(identical(other.lastScannedAt, lastScannedAt) || other.lastScannedAt == lastScannedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,status,firstScannedAt,lastScannedAt);

@override
String toString() {
  return 'PendingUser(uid: $uid, status: $status, firstScannedAt: $firstScannedAt, lastScannedAt: $lastScannedAt)';
}


}

/// @nodoc
abstract mixin class $PendingUserCopyWith<$Res>  {
  factory $PendingUserCopyWith(PendingUser value, $Res Function(PendingUser) _then) = _$PendingUserCopyWithImpl;
@useResult
$Res call({
 String uid, String status, DateTime firstScannedAt, DateTime lastScannedAt
});




}
/// @nodoc
class _$PendingUserCopyWithImpl<$Res>
    implements $PendingUserCopyWith<$Res> {
  _$PendingUserCopyWithImpl(this._self, this._then);

  final PendingUser _self;
  final $Res Function(PendingUser) _then;

/// Create a copy of PendingUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? status = null,Object? firstScannedAt = null,Object? lastScannedAt = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,firstScannedAt: null == firstScannedAt ? _self.firstScannedAt : firstScannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastScannedAt: null == lastScannedAt ? _self.lastScannedAt : lastScannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingUser].
extension PendingUserPatterns on PendingUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingUser value)  $default,){
final _that = this;
switch (_that) {
case _PendingUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingUser value)?  $default,){
final _that = this;
switch (_that) {
case _PendingUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String status,  DateTime firstScannedAt,  DateTime lastScannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingUser() when $default != null:
return $default(_that.uid,_that.status,_that.firstScannedAt,_that.lastScannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String status,  DateTime firstScannedAt,  DateTime lastScannedAt)  $default,) {final _that = this;
switch (_that) {
case _PendingUser():
return $default(_that.uid,_that.status,_that.firstScannedAt,_that.lastScannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String status,  DateTime firstScannedAt,  DateTime lastScannedAt)?  $default,) {final _that = this;
switch (_that) {
case _PendingUser() when $default != null:
return $default(_that.uid,_that.status,_that.firstScannedAt,_that.lastScannedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PendingUser implements PendingUser {
  const _PendingUser({required this.uid, required this.status, required this.firstScannedAt, required this.lastScannedAt});
  

@override final  String uid;
@override final  String status;
@override final  DateTime firstScannedAt;
@override final  DateTime lastScannedAt;

/// Create a copy of PendingUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingUserCopyWith<_PendingUser> get copyWith => __$PendingUserCopyWithImpl<_PendingUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstScannedAt, firstScannedAt) || other.firstScannedAt == firstScannedAt)&&(identical(other.lastScannedAt, lastScannedAt) || other.lastScannedAt == lastScannedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,status,firstScannedAt,lastScannedAt);

@override
String toString() {
  return 'PendingUser(uid: $uid, status: $status, firstScannedAt: $firstScannedAt, lastScannedAt: $lastScannedAt)';
}


}

/// @nodoc
abstract mixin class _$PendingUserCopyWith<$Res> implements $PendingUserCopyWith<$Res> {
  factory _$PendingUserCopyWith(_PendingUser value, $Res Function(_PendingUser) _then) = __$PendingUserCopyWithImpl;
@override @useResult
$Res call({
 String uid, String status, DateTime firstScannedAt, DateTime lastScannedAt
});




}
/// @nodoc
class __$PendingUserCopyWithImpl<$Res>
    implements _$PendingUserCopyWith<$Res> {
  __$PendingUserCopyWithImpl(this._self, this._then);

  final _PendingUser _self;
  final $Res Function(_PendingUser) _then;

/// Create a copy of PendingUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? status = null,Object? firstScannedAt = null,Object? lastScannedAt = null,}) {
  return _then(_PendingUser(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,firstScannedAt: null == firstScannedAt ? _self.firstScannedAt : firstScannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastScannedAt: null == lastScannedAt ? _self.lastScannedAt : lastScannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
