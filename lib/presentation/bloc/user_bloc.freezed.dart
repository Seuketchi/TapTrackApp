// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAllUsers value)?  getAllUsers,TResult Function( _AddUser value)?  addUser,TResult Function( _UpdateUser value)?  updateUser,TResult Function( _DeleteUser value)?  deleteUser,TResult Function( _UsersUpdated value)?  usersUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllUsers() when getAllUsers != null:
return getAllUsers(_that);case _AddUser() when addUser != null:
return addUser(_that);case _UpdateUser() when updateUser != null:
return updateUser(_that);case _DeleteUser() when deleteUser != null:
return deleteUser(_that);case _UsersUpdated() when usersUpdated != null:
return usersUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAllUsers value)  getAllUsers,required TResult Function( _AddUser value)  addUser,required TResult Function( _UpdateUser value)  updateUser,required TResult Function( _DeleteUser value)  deleteUser,required TResult Function( _UsersUpdated value)  usersUpdated,}){
final _that = this;
switch (_that) {
case _GetAllUsers():
return getAllUsers(_that);case _AddUser():
return addUser(_that);case _UpdateUser():
return updateUser(_that);case _DeleteUser():
return deleteUser(_that);case _UsersUpdated():
return usersUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAllUsers value)?  getAllUsers,TResult? Function( _AddUser value)?  addUser,TResult? Function( _UpdateUser value)?  updateUser,TResult? Function( _DeleteUser value)?  deleteUser,TResult? Function( _UsersUpdated value)?  usersUpdated,}){
final _that = this;
switch (_that) {
case _GetAllUsers() when getAllUsers != null:
return getAllUsers(_that);case _AddUser() when addUser != null:
return addUser(_that);case _UpdateUser() when updateUser != null:
return updateUser(_that);case _DeleteUser() when deleteUser != null:
return deleteUser(_that);case _UsersUpdated() when usersUpdated != null:
return usersUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAllUsers,TResult Function( AddUserParams params)?  addUser,TResult Function( String uid,  User updated)?  updateUser,TResult Function( String uid)?  deleteUser,TResult Function( List<User> users)?  usersUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllUsers() when getAllUsers != null:
return getAllUsers();case _AddUser() when addUser != null:
return addUser(_that.params);case _UpdateUser() when updateUser != null:
return updateUser(_that.uid,_that.updated);case _DeleteUser() when deleteUser != null:
return deleteUser(_that.uid);case _UsersUpdated() when usersUpdated != null:
return usersUpdated(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAllUsers,required TResult Function( AddUserParams params)  addUser,required TResult Function( String uid,  User updated)  updateUser,required TResult Function( String uid)  deleteUser,required TResult Function( List<User> users)  usersUpdated,}) {final _that = this;
switch (_that) {
case _GetAllUsers():
return getAllUsers();case _AddUser():
return addUser(_that.params);case _UpdateUser():
return updateUser(_that.uid,_that.updated);case _DeleteUser():
return deleteUser(_that.uid);case _UsersUpdated():
return usersUpdated(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAllUsers,TResult? Function( AddUserParams params)?  addUser,TResult? Function( String uid,  User updated)?  updateUser,TResult? Function( String uid)?  deleteUser,TResult? Function( List<User> users)?  usersUpdated,}) {final _that = this;
switch (_that) {
case _GetAllUsers() when getAllUsers != null:
return getAllUsers();case _AddUser() when addUser != null:
return addUser(_that.params);case _UpdateUser() when updateUser != null:
return updateUser(_that.uid,_that.updated);case _DeleteUser() when deleteUser != null:
return deleteUser(_that.uid);case _UsersUpdated() when usersUpdated != null:
return usersUpdated(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _GetAllUsers implements UserEvent {
  const _GetAllUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.getAllUsers()';
}


}




/// @nodoc


class _AddUser implements UserEvent {
  const _AddUser(this.params);
  

 final  AddUserParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddUserCopyWith<_AddUser> get copyWith => __$AddUserCopyWithImpl<_AddUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddUser&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.addUser(params: $params)';
}


}

/// @nodoc
abstract mixin class _$AddUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$AddUserCopyWith(_AddUser value, $Res Function(_AddUser) _then) = __$AddUserCopyWithImpl;
@useResult
$Res call({
 AddUserParams params
});




}
/// @nodoc
class __$AddUserCopyWithImpl<$Res>
    implements _$AddUserCopyWith<$Res> {
  __$AddUserCopyWithImpl(this._self, this._then);

  final _AddUser _self;
  final $Res Function(_AddUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_AddUser(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddUserParams,
  ));
}


}

/// @nodoc


class _UpdateUser implements UserEvent {
  const _UpdateUser(this.uid, this.updated);
  

 final  String uid;
 final  User updated;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserCopyWith<_UpdateUser> get copyWith => __$UpdateUserCopyWithImpl<_UpdateUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.updated, updated) || other.updated == updated));
}


@override
int get hashCode => Object.hash(runtimeType,uid,updated);

@override
String toString() {
  return 'UserEvent.updateUser(uid: $uid, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UpdateUserCopyWith(_UpdateUser value, $Res Function(_UpdateUser) _then) = __$UpdateUserCopyWithImpl;
@useResult
$Res call({
 String uid, User updated
});


$UserCopyWith<$Res> get updated;

}
/// @nodoc
class __$UpdateUserCopyWithImpl<$Res>
    implements _$UpdateUserCopyWith<$Res> {
  __$UpdateUserCopyWithImpl(this._self, this._then);

  final _UpdateUser _self;
  final $Res Function(_UpdateUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? updated = null,}) {
  return _then(_UpdateUser(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get updated {
  
  return $UserCopyWith<$Res>(_self.updated, (value) {
    return _then(_self.copyWith(updated: value));
  });
}
}

/// @nodoc


class _DeleteUser implements UserEvent {
  const _DeleteUser(this.uid);
  

 final  String uid;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserCopyWith<_DeleteUser> get copyWith => __$DeleteUserCopyWithImpl<_DeleteUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUser&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'UserEvent.deleteUser(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$DeleteUserCopyWith(_DeleteUser value, $Res Function(_DeleteUser) _then) = __$DeleteUserCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$DeleteUserCopyWithImpl<$Res>
    implements _$DeleteUserCopyWith<$Res> {
  __$DeleteUserCopyWithImpl(this._self, this._then);

  final _DeleteUser _self;
  final $Res Function(_DeleteUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_DeleteUser(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UsersUpdated implements UserEvent {
  const _UsersUpdated(final  List<User> users): _users = users;
  

 final  List<User> _users;
 List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersUpdatedCopyWith<_UsersUpdated> get copyWith => __$UsersUpdatedCopyWithImpl<_UsersUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersUpdated&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserEvent.usersUpdated(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UsersUpdatedCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UsersUpdatedCopyWith(_UsersUpdated value, $Res Function(_UsersUpdated) _then) = __$UsersUpdatedCopyWithImpl;
@useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class __$UsersUpdatedCopyWithImpl<$Res>
    implements _$UsersUpdatedCopyWith<$Res> {
  __$UsersUpdatedCopyWithImpl(this._self, this._then);

  final _UsersUpdated _self;
  final $Res Function(_UsersUpdated) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_UsersUpdated(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc
mixin _$UserState {

 DataState<List<User>> get users;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.users, users) || other.users == users));
}


@override
int get hashCode => Object.hash(runtimeType,users);

@override
String toString() {
  return 'UserState(users: $users)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 DataState<List<User>> users
});


$DataStateCopyWith<List<User>, $Res> get users;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DataState<List<User>>,
  ));
}
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStateCopyWith<List<User>, $Res> get users {
  
  return $DataStateCopyWith<List<User>, $Res>(_self.users, (value) {
    return _then(_self.copyWith(users: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataState<List<User>> users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataState<List<User>> users)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataState<List<User>> users)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
  const _UserState({required this.users});
  

@override final  DataState<List<User>> users;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.users, users) || other.users == users));
}


@override
int get hashCode => Object.hash(runtimeType,users);

@override
String toString() {
  return 'UserState(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 DataState<List<User>> users
});


@override $DataStateCopyWith<List<User>, $Res> get users;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_UserState(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DataState<List<User>>,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStateCopyWith<List<User>, $Res> get users {
  
  return $DataStateCopyWith<List<User>, $Res>(_self.users, (value) {
    return _then(_self.copyWith(users: value));
  });
}
}

// dart format on
