// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>()';
}


}

/// @nodoc
class $DataStateCopyWith<T,$Res>  {
$DataStateCopyWith(DataState<T> _, $Res Function(DataState<T>) __);
}


/// Adds pattern-matching-related methods to [DataState].
extension DataStatePatterns<T> on DataState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( DataStateLoaded<T> value)?  $default,{TResult Function( DataStateLoading<T> value)?  loading,TResult Function( DataStateError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DataStateLoaded() when $default != null:
return $default(_that);case DataStateLoading() when loading != null:
return loading(_that);case DataStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( DataStateLoaded<T> value)  $default,{required TResult Function( DataStateLoading<T> value)  loading,required TResult Function( DataStateError<T> value)  error,}){
final _that = this;
switch (_that) {
case DataStateLoaded():
return $default(_that);case DataStateLoading():
return loading(_that);case DataStateError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( DataStateLoaded<T> value)?  $default,{TResult? Function( DataStateLoading<T> value)?  loading,TResult? Function( DataStateError<T> value)?  error,}){
final _that = this;
switch (_that) {
case DataStateLoaded() when $default != null:
return $default(_that);case DataStateLoading() when loading != null:
return loading(_that);case DataStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T data)?  $default,{TResult Function()?  loading,TResult Function( Object error,  StackTrace stackTrace)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DataStateLoaded() when $default != null:
return $default(_that.data);case DataStateLoading() when loading != null:
return loading();case DataStateError() when error != null:
return error(_that.error,_that.stackTrace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T data)  $default,{required TResult Function()  loading,required TResult Function( Object error,  StackTrace stackTrace)  error,}) {final _that = this;
switch (_that) {
case DataStateLoaded():
return $default(_that.data);case DataStateLoading():
return loading();case DataStateError():
return error(_that.error,_that.stackTrace);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T data)?  $default,{TResult? Function()?  loading,TResult? Function( Object error,  StackTrace stackTrace)?  error,}) {final _that = this;
switch (_that) {
case DataStateLoaded() when $default != null:
return $default(_that.data);case DataStateLoading() when loading != null:
return loading();case DataStateError() when error != null:
return error(_that.error,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class DataStateLoaded<T> implements DataState<T> {
  const DataStateLoaded(this.data);
  

 final  T data;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataStateLoadedCopyWith<T, DataStateLoaded<T>> get copyWith => _$DataStateLoadedCopyWithImpl<T, DataStateLoaded<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateLoaded<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DataState<$T>(data: $data)';
}


}

/// @nodoc
abstract mixin class $DataStateLoadedCopyWith<T,$Res> implements $DataStateCopyWith<T, $Res> {
  factory $DataStateLoadedCopyWith(DataStateLoaded<T> value, $Res Function(DataStateLoaded<T>) _then) = _$DataStateLoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$DataStateLoadedCopyWithImpl<T,$Res>
    implements $DataStateLoadedCopyWith<T, $Res> {
  _$DataStateLoadedCopyWithImpl(this._self, this._then);

  final DataStateLoaded<T> _self;
  final $Res Function(DataStateLoaded<T>) _then;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(DataStateLoaded<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class DataStateLoading<T> implements DataState<T> {
  const DataStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>.loading()';
}


}




/// @nodoc


class DataStateError<T> implements DataState<T> {
  const DataStateError({required this.error, this.stackTrace = StackTrace.empty});
  

 final  Object error;
@JsonKey() final  StackTrace stackTrace;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataStateErrorCopyWith<T, DataStateError<T>> get copyWith => _$DataStateErrorCopyWithImpl<T, DataStateError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateError<T>&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'DataState<$T>.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $DataStateErrorCopyWith<T,$Res> implements $DataStateCopyWith<T, $Res> {
  factory $DataStateErrorCopyWith(DataStateError<T> value, $Res Function(DataStateError<T>) _then) = _$DataStateErrorCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace stackTrace
});




}
/// @nodoc
class _$DataStateErrorCopyWithImpl<T,$Res>
    implements $DataStateErrorCopyWith<T, $Res> {
  _$DataStateErrorCopyWithImpl(this._self, this._then);

  final DataStateError<T> _self;
  final $Res Function(DataStateError<T>) _then;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = null,}) {
  return _then(DataStateError<T>(
error: null == error ? _self.error : error ,stackTrace: null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
