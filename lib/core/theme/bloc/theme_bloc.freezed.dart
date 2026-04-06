// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState()';
}


}

/// @nodoc
class $ThemeStateCopyWith<$Res>  {
$ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ThemeInitialState value)?  initial,TResult Function( ThemeChangeState value)?  changeState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ThemeInitialState() when initial != null:
return initial(_that);case ThemeChangeState() when changeState != null:
return changeState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ThemeInitialState value)  initial,required TResult Function( ThemeChangeState value)  changeState,}){
final _that = this;
switch (_that) {
case ThemeInitialState():
return initial(_that);case ThemeChangeState():
return changeState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ThemeInitialState value)?  initial,TResult? Function( ThemeChangeState value)?  changeState,}){
final _that = this;
switch (_that) {
case ThemeInitialState() when initial != null:
return initial(_that);case ThemeChangeState() when changeState != null:
return changeState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  changeState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ThemeInitialState() when initial != null:
return initial();case ThemeChangeState() when changeState != null:
return changeState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  changeState,}) {final _that = this;
switch (_that) {
case ThemeInitialState():
return initial();case ThemeChangeState():
return changeState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  changeState,}) {final _that = this;
switch (_that) {
case ThemeInitialState() when initial != null:
return initial();case ThemeChangeState() when changeState != null:
return changeState();case _:
  return null;

}
}

}

/// @nodoc


class ThemeInitialState implements ThemeState {
  const ThemeInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.initial()';
}


}




/// @nodoc


class ThemeChangeState implements ThemeState {
  const ThemeChangeState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeChangeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.changeState()';
}


}




/// @nodoc
mixin _$ThemeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent()';
}


}

/// @nodoc
class $ThemeEventCopyWith<$Res>  {
$ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}


/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCachedThemeEvent value)?  fetchCachedTheme,TResult Function( ChangeThemeEvent value)?  changeTheme,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCachedThemeEvent() when fetchCachedTheme != null:
return fetchCachedTheme(_that);case ChangeThemeEvent() when changeTheme != null:
return changeTheme(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCachedThemeEvent value)  fetchCachedTheme,required TResult Function( ChangeThemeEvent value)  changeTheme,}){
final _that = this;
switch (_that) {
case FetchCachedThemeEvent():
return fetchCachedTheme(_that);case ChangeThemeEvent():
return changeTheme(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCachedThemeEvent value)?  fetchCachedTheme,TResult? Function( ChangeThemeEvent value)?  changeTheme,}){
final _that = this;
switch (_that) {
case FetchCachedThemeEvent() when fetchCachedTheme != null:
return fetchCachedTheme(_that);case ChangeThemeEvent() when changeTheme != null:
return changeTheme(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCachedTheme,TResult Function( String value)?  changeTheme,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCachedThemeEvent() when fetchCachedTheme != null:
return fetchCachedTheme();case ChangeThemeEvent() when changeTheme != null:
return changeTheme(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCachedTheme,required TResult Function( String value)  changeTheme,}) {final _that = this;
switch (_that) {
case FetchCachedThemeEvent():
return fetchCachedTheme();case ChangeThemeEvent():
return changeTheme(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCachedTheme,TResult? Function( String value)?  changeTheme,}) {final _that = this;
switch (_that) {
case FetchCachedThemeEvent() when fetchCachedTheme != null:
return fetchCachedTheme();case ChangeThemeEvent() when changeTheme != null:
return changeTheme(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class FetchCachedThemeEvent implements ThemeEvent {
  const FetchCachedThemeEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCachedThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent.fetchCachedTheme()';
}


}




/// @nodoc


class ChangeThemeEvent implements ThemeEvent {
  const ChangeThemeEvent(this.value);
  

 final  String value;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeThemeEventCopyWith<ChangeThemeEvent> get copyWith => _$ChangeThemeEventCopyWithImpl<ChangeThemeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeThemeEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ThemeEvent.changeTheme(value: $value)';
}


}

/// @nodoc
abstract mixin class $ChangeThemeEventCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ChangeThemeEventCopyWith(ChangeThemeEvent value, $Res Function(ChangeThemeEvent) _then) = _$ChangeThemeEventCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ChangeThemeEventCopyWithImpl<$Res>
    implements $ChangeThemeEventCopyWith<$Res> {
  _$ChangeThemeEventCopyWithImpl(this._self, this._then);

  final ChangeThemeEvent _self;
  final $Res Function(ChangeThemeEvent) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ChangeThemeEvent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
