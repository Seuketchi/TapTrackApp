// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PendingUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PendingUserEvent()';
}


}

/// @nodoc
class $PendingUserEventCopyWith<$Res>  {
$PendingUserEventCopyWith(PendingUserEvent _, $Res Function(PendingUserEvent) __);
}


/// Adds pattern-matching-related methods to [PendingUserEvent].
extension PendingUserEventPatterns on PendingUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAllPendingUsers value)?  getAllPendingUsers,TResult Function( _AddPendingUser value)?  addPendingUser,TResult Function( _UpdatePendingUser value)?  updatePendingUser,TResult Function( _DeletePendingUser value)?  deletePendingUser,TResult Function( _PendingUsersUpdated value)?  pendingUsersUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllPendingUsers() when getAllPendingUsers != null:
return getAllPendingUsers(_that);case _AddPendingUser() when addPendingUser != null:
return addPendingUser(_that);case _UpdatePendingUser() when updatePendingUser != null:
return updatePendingUser(_that);case _DeletePendingUser() when deletePendingUser != null:
return deletePendingUser(_that);case _PendingUsersUpdated() when pendingUsersUpdated != null:
return pendingUsersUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAllPendingUsers value)  getAllPendingUsers,required TResult Function( _AddPendingUser value)  addPendingUser,required TResult Function( _UpdatePendingUser value)  updatePendingUser,required TResult Function( _DeletePendingUser value)  deletePendingUser,required TResult Function( _PendingUsersUpdated value)  pendingUsersUpdated,}){
final _that = this;
switch (_that) {
case _GetAllPendingUsers():
return getAllPendingUsers(_that);case _AddPendingUser():
return addPendingUser(_that);case _UpdatePendingUser():
return updatePendingUser(_that);case _DeletePendingUser():
return deletePendingUser(_that);case _PendingUsersUpdated():
return pendingUsersUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAllPendingUsers value)?  getAllPendingUsers,TResult? Function( _AddPendingUser value)?  addPendingUser,TResult? Function( _UpdatePendingUser value)?  updatePendingUser,TResult? Function( _DeletePendingUser value)?  deletePendingUser,TResult? Function( _PendingUsersUpdated value)?  pendingUsersUpdated,}){
final _that = this;
switch (_that) {
case _GetAllPendingUsers() when getAllPendingUsers != null:
return getAllPendingUsers(_that);case _AddPendingUser() when addPendingUser != null:
return addPendingUser(_that);case _UpdatePendingUser() when updatePendingUser != null:
return updatePendingUser(_that);case _DeletePendingUser() when deletePendingUser != null:
return deletePendingUser(_that);case _PendingUsersUpdated() when pendingUsersUpdated != null:
return pendingUsersUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAllPendingUsers,TResult Function( AddPendingUserParams params)?  addPendingUser,TResult Function( String uid,  PendingUser updated)?  updatePendingUser,TResult Function( String uid)?  deletePendingUser,TResult Function( List<PendingUser> users)?  pendingUsersUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllPendingUsers() when getAllPendingUsers != null:
return getAllPendingUsers();case _AddPendingUser() when addPendingUser != null:
return addPendingUser(_that.params);case _UpdatePendingUser() when updatePendingUser != null:
return updatePendingUser(_that.uid,_that.updated);case _DeletePendingUser() when deletePendingUser != null:
return deletePendingUser(_that.uid);case _PendingUsersUpdated() when pendingUsersUpdated != null:
return pendingUsersUpdated(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAllPendingUsers,required TResult Function( AddPendingUserParams params)  addPendingUser,required TResult Function( String uid,  PendingUser updated)  updatePendingUser,required TResult Function( String uid)  deletePendingUser,required TResult Function( List<PendingUser> users)  pendingUsersUpdated,}) {final _that = this;
switch (_that) {
case _GetAllPendingUsers():
return getAllPendingUsers();case _AddPendingUser():
return addPendingUser(_that.params);case _UpdatePendingUser():
return updatePendingUser(_that.uid,_that.updated);case _DeletePendingUser():
return deletePendingUser(_that.uid);case _PendingUsersUpdated():
return pendingUsersUpdated(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAllPendingUsers,TResult? Function( AddPendingUserParams params)?  addPendingUser,TResult? Function( String uid,  PendingUser updated)?  updatePendingUser,TResult? Function( String uid)?  deletePendingUser,TResult? Function( List<PendingUser> users)?  pendingUsersUpdated,}) {final _that = this;
switch (_that) {
case _GetAllPendingUsers() when getAllPendingUsers != null:
return getAllPendingUsers();case _AddPendingUser() when addPendingUser != null:
return addPendingUser(_that.params);case _UpdatePendingUser() when updatePendingUser != null:
return updatePendingUser(_that.uid,_that.updated);case _DeletePendingUser() when deletePendingUser != null:
return deletePendingUser(_that.uid);case _PendingUsersUpdated() when pendingUsersUpdated != null:
return pendingUsersUpdated(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _GetAllPendingUsers implements PendingUserEvent {
  const _GetAllPendingUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllPendingUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PendingUserEvent.getAllPendingUsers()';
}


}




/// @nodoc


class _AddPendingUser implements PendingUserEvent {
  const _AddPendingUser(this.params);
  

 final  AddPendingUserParams params;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPendingUserCopyWith<_AddPendingUser> get copyWith => __$AddPendingUserCopyWithImpl<_AddPendingUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPendingUser&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'PendingUserEvent.addPendingUser(params: $params)';
}


}

/// @nodoc
abstract mixin class _$AddPendingUserCopyWith<$Res> implements $PendingUserEventCopyWith<$Res> {
  factory _$AddPendingUserCopyWith(_AddPendingUser value, $Res Function(_AddPendingUser) _then) = __$AddPendingUserCopyWithImpl;
@useResult
$Res call({
 AddPendingUserParams params
});




}
/// @nodoc
class __$AddPendingUserCopyWithImpl<$Res>
    implements _$AddPendingUserCopyWith<$Res> {
  __$AddPendingUserCopyWithImpl(this._self, this._then);

  final _AddPendingUser _self;
  final $Res Function(_AddPendingUser) _then;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_AddPendingUser(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddPendingUserParams,
  ));
}


}

/// @nodoc


class _UpdatePendingUser implements PendingUserEvent {
  const _UpdatePendingUser(this.uid, this.updated);
  

 final  String uid;
 final  PendingUser updated;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePendingUserCopyWith<_UpdatePendingUser> get copyWith => __$UpdatePendingUserCopyWithImpl<_UpdatePendingUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePendingUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.updated, updated) || other.updated == updated));
}


@override
int get hashCode => Object.hash(runtimeType,uid,updated);

@override
String toString() {
  return 'PendingUserEvent.updatePendingUser(uid: $uid, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$UpdatePendingUserCopyWith<$Res> implements $PendingUserEventCopyWith<$Res> {
  factory _$UpdatePendingUserCopyWith(_UpdatePendingUser value, $Res Function(_UpdatePendingUser) _then) = __$UpdatePendingUserCopyWithImpl;
@useResult
$Res call({
 String uid, PendingUser updated
});


$PendingUserCopyWith<$Res> get updated;

}
/// @nodoc
class __$UpdatePendingUserCopyWithImpl<$Res>
    implements _$UpdatePendingUserCopyWith<$Res> {
  __$UpdatePendingUserCopyWithImpl(this._self, this._then);

  final _UpdatePendingUser _self;
  final $Res Function(_UpdatePendingUser) _then;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? updated = null,}) {
  return _then(_UpdatePendingUser(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as PendingUser,
  ));
}

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingUserCopyWith<$Res> get updated {
  
  return $PendingUserCopyWith<$Res>(_self.updated, (value) {
    return _then(_self.copyWith(updated: value));
  });
}
}

/// @nodoc


class _DeletePendingUser implements PendingUserEvent {
  const _DeletePendingUser(this.uid);
  

 final  String uid;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePendingUserCopyWith<_DeletePendingUser> get copyWith => __$DeletePendingUserCopyWithImpl<_DeletePendingUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePendingUser&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'PendingUserEvent.deletePendingUser(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$DeletePendingUserCopyWith<$Res> implements $PendingUserEventCopyWith<$Res> {
  factory _$DeletePendingUserCopyWith(_DeletePendingUser value, $Res Function(_DeletePendingUser) _then) = __$DeletePendingUserCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$DeletePendingUserCopyWithImpl<$Res>
    implements _$DeletePendingUserCopyWith<$Res> {
  __$DeletePendingUserCopyWithImpl(this._self, this._then);

  final _DeletePendingUser _self;
  final $Res Function(_DeletePendingUser) _then;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_DeletePendingUser(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PendingUsersUpdated implements PendingUserEvent {
  const _PendingUsersUpdated(final  List<PendingUser> users): _users = users;
  

 final  List<PendingUser> _users;
 List<PendingUser> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingUsersUpdatedCopyWith<_PendingUsersUpdated> get copyWith => __$PendingUsersUpdatedCopyWithImpl<_PendingUsersUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingUsersUpdated&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'PendingUserEvent.pendingUsersUpdated(users: $users)';
}


}

/// @nodoc
abstract mixin class _$PendingUsersUpdatedCopyWith<$Res> implements $PendingUserEventCopyWith<$Res> {
  factory _$PendingUsersUpdatedCopyWith(_PendingUsersUpdated value, $Res Function(_PendingUsersUpdated) _then) = __$PendingUsersUpdatedCopyWithImpl;
@useResult
$Res call({
 List<PendingUser> users
});




}
/// @nodoc
class __$PendingUsersUpdatedCopyWithImpl<$Res>
    implements _$PendingUsersUpdatedCopyWith<$Res> {
  __$PendingUsersUpdatedCopyWithImpl(this._self, this._then);

  final _PendingUsersUpdated _self;
  final $Res Function(_PendingUsersUpdated) _then;

/// Create a copy of PendingUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_PendingUsersUpdated(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<PendingUser>,
  ));
}


}

// dart format on
