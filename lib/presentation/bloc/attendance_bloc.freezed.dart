// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceEvent()';
}


}

/// @nodoc
class $AttendanceEventCopyWith<$Res>  {
$AttendanceEventCopyWith(AttendanceEvent _, $Res Function(AttendanceEvent) __);
}


/// Adds pattern-matching-related methods to [AttendanceEvent].
extension AttendanceEventPatterns on AttendanceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAllAttendance value)?  getAllAttendance,TResult Function( _AddAttendance value)?  addAttendance,TResult Function( _UpdateAttendance value)?  updateAttendance,TResult Function( _DeleteAttendance value)?  deleteAttendance,TResult Function( _MarkAttendance value)?  markAttendance,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllAttendance() when getAllAttendance != null:
return getAllAttendance(_that);case _AddAttendance() when addAttendance != null:
return addAttendance(_that);case _UpdateAttendance() when updateAttendance != null:
return updateAttendance(_that);case _DeleteAttendance() when deleteAttendance != null:
return deleteAttendance(_that);case _MarkAttendance() when markAttendance != null:
return markAttendance(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAllAttendance value)  getAllAttendance,required TResult Function( _AddAttendance value)  addAttendance,required TResult Function( _UpdateAttendance value)  updateAttendance,required TResult Function( _DeleteAttendance value)  deleteAttendance,required TResult Function( _MarkAttendance value)  markAttendance,}){
final _that = this;
switch (_that) {
case _GetAllAttendance():
return getAllAttendance(_that);case _AddAttendance():
return addAttendance(_that);case _UpdateAttendance():
return updateAttendance(_that);case _DeleteAttendance():
return deleteAttendance(_that);case _MarkAttendance():
return markAttendance(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAllAttendance value)?  getAllAttendance,TResult? Function( _AddAttendance value)?  addAttendance,TResult? Function( _UpdateAttendance value)?  updateAttendance,TResult? Function( _DeleteAttendance value)?  deleteAttendance,TResult? Function( _MarkAttendance value)?  markAttendance,}){
final _that = this;
switch (_that) {
case _GetAllAttendance() when getAllAttendance != null:
return getAllAttendance(_that);case _AddAttendance() when addAttendance != null:
return addAttendance(_that);case _UpdateAttendance() when updateAttendance != null:
return updateAttendance(_that);case _DeleteAttendance() when deleteAttendance != null:
return deleteAttendance(_that);case _MarkAttendance() when markAttendance != null:
return markAttendance(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAllAttendance,TResult Function( Attendance attendance)?  addAttendance,TResult Function( String id,  Attendance attendance)?  updateAttendance,TResult Function( String id)?  deleteAttendance,TResult Function( Attendance attendance)?  markAttendance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllAttendance() when getAllAttendance != null:
return getAllAttendance();case _AddAttendance() when addAttendance != null:
return addAttendance(_that.attendance);case _UpdateAttendance() when updateAttendance != null:
return updateAttendance(_that.id,_that.attendance);case _DeleteAttendance() when deleteAttendance != null:
return deleteAttendance(_that.id);case _MarkAttendance() when markAttendance != null:
return markAttendance(_that.attendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAllAttendance,required TResult Function( Attendance attendance)  addAttendance,required TResult Function( String id,  Attendance attendance)  updateAttendance,required TResult Function( String id)  deleteAttendance,required TResult Function( Attendance attendance)  markAttendance,}) {final _that = this;
switch (_that) {
case _GetAllAttendance():
return getAllAttendance();case _AddAttendance():
return addAttendance(_that.attendance);case _UpdateAttendance():
return updateAttendance(_that.id,_that.attendance);case _DeleteAttendance():
return deleteAttendance(_that.id);case _MarkAttendance():
return markAttendance(_that.attendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAllAttendance,TResult? Function( Attendance attendance)?  addAttendance,TResult? Function( String id,  Attendance attendance)?  updateAttendance,TResult? Function( String id)?  deleteAttendance,TResult? Function( Attendance attendance)?  markAttendance,}) {final _that = this;
switch (_that) {
case _GetAllAttendance() when getAllAttendance != null:
return getAllAttendance();case _AddAttendance() when addAttendance != null:
return addAttendance(_that.attendance);case _UpdateAttendance() when updateAttendance != null:
return updateAttendance(_that.id,_that.attendance);case _DeleteAttendance() when deleteAttendance != null:
return deleteAttendance(_that.id);case _MarkAttendance() when markAttendance != null:
return markAttendance(_that.attendance);case _:
  return null;

}
}

}

/// @nodoc


class _GetAllAttendance implements AttendanceEvent {
  const _GetAllAttendance();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllAttendance);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceEvent.getAllAttendance()';
}


}




/// @nodoc


class _AddAttendance implements AttendanceEvent {
  const _AddAttendance(this.attendance);
  

 final  Attendance attendance;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAttendanceCopyWith<_AddAttendance> get copyWith => __$AddAttendanceCopyWithImpl<_AddAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAttendance&&(identical(other.attendance, attendance) || other.attendance == attendance));
}


@override
int get hashCode => Object.hash(runtimeType,attendance);

@override
String toString() {
  return 'AttendanceEvent.addAttendance(attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$AddAttendanceCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$AddAttendanceCopyWith(_AddAttendance value, $Res Function(_AddAttendance) _then) = __$AddAttendanceCopyWithImpl;
@useResult
$Res call({
 Attendance attendance
});


$AttendanceCopyWith<$Res> get attendance;

}
/// @nodoc
class __$AddAttendanceCopyWithImpl<$Res>
    implements _$AddAttendanceCopyWith<$Res> {
  __$AddAttendanceCopyWithImpl(this._self, this._then);

  final _AddAttendance _self;
  final $Res Function(_AddAttendance) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attendance = null,}) {
  return _then(_AddAttendance(
null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as Attendance,
  ));
}

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res> get attendance {
  
  return $AttendanceCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}

/// @nodoc


class _UpdateAttendance implements AttendanceEvent {
  const _UpdateAttendance(this.id, this.attendance);
  

 final  String id;
 final  Attendance attendance;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAttendanceCopyWith<_UpdateAttendance> get copyWith => __$UpdateAttendanceCopyWithImpl<_UpdateAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAttendance&&(identical(other.id, id) || other.id == id)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}


@override
int get hashCode => Object.hash(runtimeType,id,attendance);

@override
String toString() {
  return 'AttendanceEvent.updateAttendance(id: $id, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$UpdateAttendanceCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$UpdateAttendanceCopyWith(_UpdateAttendance value, $Res Function(_UpdateAttendance) _then) = __$UpdateAttendanceCopyWithImpl;
@useResult
$Res call({
 String id, Attendance attendance
});


$AttendanceCopyWith<$Res> get attendance;

}
/// @nodoc
class __$UpdateAttendanceCopyWithImpl<$Res>
    implements _$UpdateAttendanceCopyWith<$Res> {
  __$UpdateAttendanceCopyWithImpl(this._self, this._then);

  final _UpdateAttendance _self;
  final $Res Function(_UpdateAttendance) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attendance = null,}) {
  return _then(_UpdateAttendance(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as Attendance,
  ));
}

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res> get attendance {
  
  return $AttendanceCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}

/// @nodoc


class _DeleteAttendance implements AttendanceEvent {
  const _DeleteAttendance(this.id);
  

 final  String id;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAttendanceCopyWith<_DeleteAttendance> get copyWith => __$DeleteAttendanceCopyWithImpl<_DeleteAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAttendance&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AttendanceEvent.deleteAttendance(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteAttendanceCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$DeleteAttendanceCopyWith(_DeleteAttendance value, $Res Function(_DeleteAttendance) _then) = __$DeleteAttendanceCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteAttendanceCopyWithImpl<$Res>
    implements _$DeleteAttendanceCopyWith<$Res> {
  __$DeleteAttendanceCopyWithImpl(this._self, this._then);

  final _DeleteAttendance _self;
  final $Res Function(_DeleteAttendance) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteAttendance(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MarkAttendance implements AttendanceEvent {
  const _MarkAttendance(this.attendance);
  

 final  Attendance attendance;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkAttendanceCopyWith<_MarkAttendance> get copyWith => __$MarkAttendanceCopyWithImpl<_MarkAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkAttendance&&(identical(other.attendance, attendance) || other.attendance == attendance));
}


@override
int get hashCode => Object.hash(runtimeType,attendance);

@override
String toString() {
  return 'AttendanceEvent.markAttendance(attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$MarkAttendanceCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$MarkAttendanceCopyWith(_MarkAttendance value, $Res Function(_MarkAttendance) _then) = __$MarkAttendanceCopyWithImpl;
@useResult
$Res call({
 Attendance attendance
});


$AttendanceCopyWith<$Res> get attendance;

}
/// @nodoc
class __$MarkAttendanceCopyWithImpl<$Res>
    implements _$MarkAttendanceCopyWith<$Res> {
  __$MarkAttendanceCopyWithImpl(this._self, this._then);

  final _MarkAttendance _self;
  final $Res Function(_MarkAttendance) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attendance = null,}) {
  return _then(_MarkAttendance(
null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as Attendance,
  ));
}

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res> get attendance {
  
  return $AttendanceCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}

/// @nodoc
mixin _$AttendanceState {

 DataState<List<Attendance>> get attendance;
/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStateCopyWith<AttendanceState> get copyWith => _$AttendanceStateCopyWithImpl<AttendanceState>(this as AttendanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceState&&(identical(other.attendance, attendance) || other.attendance == attendance));
}


@override
int get hashCode => Object.hash(runtimeType,attendance);

@override
String toString() {
  return 'AttendanceState(attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class $AttendanceStateCopyWith<$Res>  {
  factory $AttendanceStateCopyWith(AttendanceState value, $Res Function(AttendanceState) _then) = _$AttendanceStateCopyWithImpl;
@useResult
$Res call({
 DataState<List<Attendance>> attendance
});


$DataStateCopyWith<List<Attendance>, $Res> get attendance;

}
/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._self, this._then);

  final AttendanceState _self;
  final $Res Function(AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendance = null,}) {
  return _then(_self.copyWith(
attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as DataState<List<Attendance>>,
  ));
}
/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStateCopyWith<List<Attendance>, $Res> get attendance {
  
  return $DataStateCopyWith<List<Attendance>, $Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceState].
extension AttendanceStatePatterns on AttendanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceState value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceState value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataState<List<Attendance>> attendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.attendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataState<List<Attendance>> attendance)  $default,) {final _that = this;
switch (_that) {
case _AttendanceState():
return $default(_that.attendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataState<List<Attendance>> attendance)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.attendance);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceState implements AttendanceState {
  const _AttendanceState({required this.attendance});
  

@override final  DataState<List<Attendance>> attendance;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStateCopyWith<_AttendanceState> get copyWith => __$AttendanceStateCopyWithImpl<_AttendanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceState&&(identical(other.attendance, attendance) || other.attendance == attendance));
}


@override
int get hashCode => Object.hash(runtimeType,attendance);

@override
String toString() {
  return 'AttendanceState(attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStateCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory _$AttendanceStateCopyWith(_AttendanceState value, $Res Function(_AttendanceState) _then) = __$AttendanceStateCopyWithImpl;
@override @useResult
$Res call({
 DataState<List<Attendance>> attendance
});


@override $DataStateCopyWith<List<Attendance>, $Res> get attendance;

}
/// @nodoc
class __$AttendanceStateCopyWithImpl<$Res>
    implements _$AttendanceStateCopyWith<$Res> {
  __$AttendanceStateCopyWithImpl(this._self, this._then);

  final _AttendanceState _self;
  final $Res Function(_AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendance = null,}) {
  return _then(_AttendanceState(
attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as DataState<List<Attendance>>,
  ));
}

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStateCopyWith<List<Attendance>, $Res> get attendance {
  
  return $DataStateCopyWith<List<Attendance>, $Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}

// dart format on
