// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent()';
}


}

/// @nodoc
class $SignInEventCopyWith<$Res>  {
$SignInEventCopyWith(SignInEvent _, $Res Function(SignInEvent) __);
}


/// Adds pattern-matching-related methods to [SignInEvent].
extension SignInEventPatterns on SignInEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( SignInWithEmailAndPassword value)?  signInWithEmailAndPassword,TResult Function( SignInWithGoogle value)?  signInWithGoogle,TResult Function( SignInWithBiometrics value)?  signInWithBiometrics,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case SignInWithEmailAndPassword() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle(_that);case SignInWithBiometrics() when signInWithBiometrics != null:
return signInWithBiometrics(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( SignInWithEmailAndPassword value)  signInWithEmailAndPassword,required TResult Function( SignInWithGoogle value)  signInWithGoogle,required TResult Function( SignInWithBiometrics value)  signInWithBiometrics,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case SignInWithEmailAndPassword():
return signInWithEmailAndPassword(_that);case SignInWithGoogle():
return signInWithGoogle(_that);case SignInWithBiometrics():
return signInWithBiometrics(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( SignInWithEmailAndPassword value)?  signInWithEmailAndPassword,TResult? Function( SignInWithGoogle value)?  signInWithGoogle,TResult? Function( SignInWithBiometrics value)?  signInWithBiometrics,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case SignInWithEmailAndPassword() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword(_that);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle(_that);case SignInWithBiometrics() when signInWithBiometrics != null:
return signInWithBiometrics(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  signInWithEmailAndPassword,TResult Function()?  signInWithGoogle,TResult Function()?  signInWithBiometrics,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case SignInWithEmailAndPassword() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword();case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle();case SignInWithBiometrics() when signInWithBiometrics != null:
return signInWithBiometrics();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  signInWithEmailAndPassword,required TResult Function()  signInWithGoogle,required TResult Function()  signInWithBiometrics,}) {final _that = this;
switch (_that) {
case _Started():
return started();case SignInWithEmailAndPassword():
return signInWithEmailAndPassword();case SignInWithGoogle():
return signInWithGoogle();case SignInWithBiometrics():
return signInWithBiometrics();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  signInWithEmailAndPassword,TResult? Function()?  signInWithGoogle,TResult? Function()?  signInWithBiometrics,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case SignInWithEmailAndPassword() when signInWithEmailAndPassword != null:
return signInWithEmailAndPassword();case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle();case SignInWithBiometrics() when signInWithBiometrics != null:
return signInWithBiometrics();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SignInEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.started()';
}


}




/// @nodoc


class SignInWithEmailAndPassword implements SignInEvent {
  const SignInWithEmailAndPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithEmailAndPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.signInWithEmailAndPassword()';
}


}




/// @nodoc


class SignInWithGoogle implements SignInEvent {
  const SignInWithGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.signInWithGoogle()';
}


}




/// @nodoc


class SignInWithBiometrics implements SignInEvent {
  const SignInWithBiometrics();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithBiometrics);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.signInWithBiometrics()';
}


}




/// @nodoc
mixin _$SignInState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState<$T>()';
}


}

/// @nodoc
class $SignInStateCopyWith<T,$Res>  {
$SignInStateCopyWith(SignInState<T> _, $Res Function(SignInState<T>) __);
}


/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns<T> on SignInState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Error<T> value)?  error,TResult Function( Toast<T> value)?  toast,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case Toast() when toast != null:
return toast(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Error<T> value)  error,required TResult Function( Toast<T> value)  toast,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Error():
return error(_that);case Toast():
return toast(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Error<T> value)?  error,TResult? Function( Toast<T> value)?  toast,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case Toast() when toast != null:
return toast(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( Failure failure)?  error,TResult Function( String message,  ToastType toastType)?  toast,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case Error() when error != null:
return error(_that.failure);case Toast() when toast != null:
return toast(_that.message,_that.toastType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( Failure failure)  error,required TResult Function( String message,  ToastType toastType)  toast,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success();case Error():
return error(_that.failure);case Toast():
return toast(_that.message,_that.toastType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( Failure failure)?  error,TResult? Function( String message,  ToastType toastType)?  toast,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case Error() when error != null:
return error(_that.failure);case Toast() when toast != null:
return toast(_that.message,_that.toastType);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignInState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements SignInState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState<$T>.loading()';
}


}




/// @nodoc


class Success<T> implements SignInState<T> {
  const Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState<$T>.success()';
}


}




/// @nodoc


class Error<T> implements SignInState<T> {
  const Error(this.failure);
  

 final  Failure failure;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, Error<T>> get copyWith => _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T>&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignInState<$T>.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,$Res> implements $SignInStateCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$ErrorCopyWithImpl<T,$Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(Error<T>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class Toast<T> implements SignInState<T> {
  const Toast(this.message, this.toastType);
  

 final  String message;
 final  ToastType toastType;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastCopyWith<T, Toast<T>> get copyWith => _$ToastCopyWithImpl<T, Toast<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Toast<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.toastType, toastType) || other.toastType == toastType));
}


@override
int get hashCode => Object.hash(runtimeType,message,toastType);

@override
String toString() {
  return 'SignInState<$T>.toast(message: $message, toastType: $toastType)';
}


}

/// @nodoc
abstract mixin class $ToastCopyWith<T,$Res> implements $SignInStateCopyWith<T, $Res> {
  factory $ToastCopyWith(Toast<T> value, $Res Function(Toast<T>) _then) = _$ToastCopyWithImpl;
@useResult
$Res call({
 String message, ToastType toastType
});




}
/// @nodoc
class _$ToastCopyWithImpl<T,$Res>
    implements $ToastCopyWith<T, $Res> {
  _$ToastCopyWithImpl(this._self, this._then);

  final Toast<T> _self;
  final $Res Function(Toast<T>) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? toastType = null,}) {
  return _then(Toast<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,null == toastType ? _self.toastType : toastType // ignore: cast_nullable_to_non_nullable
as ToastType,
  ));
}


}

// dart format on
