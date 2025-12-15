// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceModel {

 String? get id; String get uid; String get name;@TimestampConverter() DateTime get timestamp; String get attendanceStatus; String get registrationStatus;
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<AttendanceModel> get copyWith => _$AttendanceModelCopyWithImpl<AttendanceModel>(this as AttendanceModel, _$identity);

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,name,timestamp,attendanceStatus,registrationStatus);

@override
String toString() {
  return 'AttendanceModel(id: $id, uid: $uid, name: $name, timestamp: $timestamp, attendanceStatus: $attendanceStatus, registrationStatus: $registrationStatus)';
}


}

/// @nodoc
abstract mixin class $AttendanceModelCopyWith<$Res>  {
  factory $AttendanceModelCopyWith(AttendanceModel value, $Res Function(AttendanceModel) _then) = _$AttendanceModelCopyWithImpl;
@useResult
$Res call({
 String? id, String uid, String name,@TimestampConverter() DateTime timestamp, String attendanceStatus, String registrationStatus
});




}
/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._self, this._then);

  final AttendanceModel _self;
  final $Res Function(AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? uid = null,Object? name = null,Object? timestamp = null,Object? attendanceStatus = null,Object? registrationStatus = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,registrationStatus: null == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceModel].
extension AttendanceModelPatterns on AttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String uid,  String name, @TimestampConverter()  DateTime timestamp,  String attendanceStatus,  String registrationStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.uid,_that.name,_that.timestamp,_that.attendanceStatus,_that.registrationStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String uid,  String name, @TimestampConverter()  DateTime timestamp,  String attendanceStatus,  String registrationStatus)  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel():
return $default(_that.id,_that.uid,_that.name,_that.timestamp,_that.attendanceStatus,_that.registrationStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String uid,  String name, @TimestampConverter()  DateTime timestamp,  String attendanceStatus,  String registrationStatus)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.uid,_that.name,_that.timestamp,_that.attendanceStatus,_that.registrationStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceModel implements AttendanceModel {
  const _AttendanceModel({this.id, required this.uid, required this.name, @TimestampConverter() required this.timestamp, required this.attendanceStatus, required this.registrationStatus});
  factory _AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);

@override final  String? id;
@override final  String uid;
@override final  String name;
@override@TimestampConverter() final  DateTime timestamp;
@override final  String attendanceStatus;
@override final  String registrationStatus;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceModelCopyWith<_AttendanceModel> get copyWith => __$AttendanceModelCopyWithImpl<_AttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,name,timestamp,attendanceStatus,registrationStatus);

@override
String toString() {
  return 'AttendanceModel(id: $id, uid: $uid, name: $name, timestamp: $timestamp, attendanceStatus: $attendanceStatus, registrationStatus: $registrationStatus)';
}


}

/// @nodoc
abstract mixin class _$AttendanceModelCopyWith<$Res> implements $AttendanceModelCopyWith<$Res> {
  factory _$AttendanceModelCopyWith(_AttendanceModel value, $Res Function(_AttendanceModel) _then) = __$AttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String uid, String name,@TimestampConverter() DateTime timestamp, String attendanceStatus, String registrationStatus
});




}
/// @nodoc
class __$AttendanceModelCopyWithImpl<$Res>
    implements _$AttendanceModelCopyWith<$Res> {
  __$AttendanceModelCopyWithImpl(this._self, this._then);

  final _AttendanceModel _self;
  final $Res Function(_AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? uid = null,Object? name = null,Object? timestamp = null,Object? attendanceStatus = null,Object? registrationStatus = null,}) {
  return _then(_AttendanceModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,registrationStatus: null == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
