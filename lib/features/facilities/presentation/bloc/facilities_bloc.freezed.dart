// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facilities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FacilitiesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesEvent()';
}


}

/// @nodoc
class $FacilitiesEventCopyWith<$Res>  {
$FacilitiesEventCopyWith(FacilitiesEvent _, $Res Function(FacilitiesEvent) __);
}


/// Adds pattern-matching-related methods to [FacilitiesEvent].
extension FacilitiesEventPatterns on FacilitiesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadLocationEvent value)?  loadLocation,TResult Function( RetryLocationEvent value)?  retryLocation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadLocationEvent() when loadLocation != null:
return loadLocation(_that);case RetryLocationEvent() when retryLocation != null:
return retryLocation(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadLocationEvent value)  loadLocation,required TResult Function( RetryLocationEvent value)  retryLocation,}){
final _that = this;
switch (_that) {
case LoadLocationEvent():
return loadLocation(_that);case RetryLocationEvent():
return retryLocation(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadLocationEvent value)?  loadLocation,TResult? Function( RetryLocationEvent value)?  retryLocation,}){
final _that = this;
switch (_that) {
case LoadLocationEvent() when loadLocation != null:
return loadLocation(_that);case RetryLocationEvent() when retryLocation != null:
return retryLocation(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadLocation,TResult Function()?  retryLocation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadLocationEvent() when loadLocation != null:
return loadLocation();case RetryLocationEvent() when retryLocation != null:
return retryLocation();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadLocation,required TResult Function()  retryLocation,}) {final _that = this;
switch (_that) {
case LoadLocationEvent():
return loadLocation();case RetryLocationEvent():
return retryLocation();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadLocation,TResult? Function()?  retryLocation,}) {final _that = this;
switch (_that) {
case LoadLocationEvent() when loadLocation != null:
return loadLocation();case RetryLocationEvent() when retryLocation != null:
return retryLocation();case _:
  return null;

}
}

}

/// @nodoc


class LoadLocationEvent implements FacilitiesEvent {
  const LoadLocationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadLocationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesEvent.loadLocation()';
}


}




/// @nodoc


class RetryLocationEvent implements FacilitiesEvent {
  const RetryLocationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetryLocationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesEvent.retryLocation()';
}


}




/// @nodoc
mixin _$FacilitiesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesState()';
}


}

/// @nodoc
class $FacilitiesStateCopyWith<$Res>  {
$FacilitiesStateCopyWith(FacilitiesState _, $Res Function(FacilitiesState) __);
}


/// Adds pattern-matching-related methods to [FacilitiesState].
extension FacilitiesStatePatterns on FacilitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FacilitiesInitial value)?  initial,TResult Function( FacilitiesLoading value)?  loading,TResult Function( FacilitiesLoaded value)?  loaded,TResult Function( FacilitiesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FacilitiesInitial() when initial != null:
return initial(_that);case FacilitiesLoading() when loading != null:
return loading(_that);case FacilitiesLoaded() when loaded != null:
return loaded(_that);case FacilitiesError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FacilitiesInitial value)  initial,required TResult Function( FacilitiesLoading value)  loading,required TResult Function( FacilitiesLoaded value)  loaded,required TResult Function( FacilitiesError value)  error,}){
final _that = this;
switch (_that) {
case FacilitiesInitial():
return initial(_that);case FacilitiesLoading():
return loading(_that);case FacilitiesLoaded():
return loaded(_that);case FacilitiesError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FacilitiesInitial value)?  initial,TResult? Function( FacilitiesLoading value)?  loading,TResult? Function( FacilitiesLoaded value)?  loaded,TResult? Function( FacilitiesError value)?  error,}){
final _that = this;
switch (_that) {
case FacilitiesInitial() when initial != null:
return initial(_that);case FacilitiesLoading() when loading != null:
return loading(_that);case FacilitiesLoaded() when loaded != null:
return loaded(_that);case FacilitiesError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( LocationModel location)?  loaded,TResult Function( Failure<LocationErrorsEnum> failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FacilitiesInitial() when initial != null:
return initial();case FacilitiesLoading() when loading != null:
return loading();case FacilitiesLoaded() when loaded != null:
return loaded(_that.location);case FacilitiesError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( LocationModel location)  loaded,required TResult Function( Failure<LocationErrorsEnum> failure)  error,}) {final _that = this;
switch (_that) {
case FacilitiesInitial():
return initial();case FacilitiesLoading():
return loading();case FacilitiesLoaded():
return loaded(_that.location);case FacilitiesError():
return error(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( LocationModel location)?  loaded,TResult? Function( Failure<LocationErrorsEnum> failure)?  error,}) {final _that = this;
switch (_that) {
case FacilitiesInitial() when initial != null:
return initial();case FacilitiesLoading() when loading != null:
return loading();case FacilitiesLoaded() when loaded != null:
return loaded(_that.location);case FacilitiesError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class FacilitiesInitial implements FacilitiesState {
  const FacilitiesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesState.initial()';
}


}




/// @nodoc


class FacilitiesLoading implements FacilitiesState {
  const FacilitiesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FacilitiesState.loading()';
}


}




/// @nodoc


class FacilitiesLoaded implements FacilitiesState {
  const FacilitiesLoaded(this.location);
  

 final  LocationModel location;

/// Create a copy of FacilitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacilitiesLoadedCopyWith<FacilitiesLoaded> get copyWith => _$FacilitiesLoadedCopyWithImpl<FacilitiesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesLoaded&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'FacilitiesState.loaded(location: $location)';
}


}

/// @nodoc
abstract mixin class $FacilitiesLoadedCopyWith<$Res> implements $FacilitiesStateCopyWith<$Res> {
  factory $FacilitiesLoadedCopyWith(FacilitiesLoaded value, $Res Function(FacilitiesLoaded) _then) = _$FacilitiesLoadedCopyWithImpl;
@useResult
$Res call({
 LocationModel location
});




}
/// @nodoc
class _$FacilitiesLoadedCopyWithImpl<$Res>
    implements $FacilitiesLoadedCopyWith<$Res> {
  _$FacilitiesLoadedCopyWithImpl(this._self, this._then);

  final FacilitiesLoaded _self;
  final $Res Function(FacilitiesLoaded) _then;

/// Create a copy of FacilitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(FacilitiesLoaded(
null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel,
  ));
}


}

/// @nodoc


class FacilitiesError implements FacilitiesState {
  const FacilitiesError(this.failure);
  

 final  Failure<LocationErrorsEnum> failure;

/// Create a copy of FacilitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacilitiesErrorCopyWith<FacilitiesError> get copyWith => _$FacilitiesErrorCopyWithImpl<FacilitiesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilitiesError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'FacilitiesState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FacilitiesErrorCopyWith<$Res> implements $FacilitiesStateCopyWith<$Res> {
  factory $FacilitiesErrorCopyWith(FacilitiesError value, $Res Function(FacilitiesError) _then) = _$FacilitiesErrorCopyWithImpl;
@useResult
$Res call({
 Failure<LocationErrorsEnum> failure
});




}
/// @nodoc
class _$FacilitiesErrorCopyWithImpl<$Res>
    implements $FacilitiesErrorCopyWith<$Res> {
  _$FacilitiesErrorCopyWithImpl(this._self, this._then);

  final FacilitiesError _self;
  final $Res Function(FacilitiesError) _then;

/// Create a copy of FacilitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(FacilitiesError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure<LocationErrorsEnum>,
  ));
}


}

// dart format on
