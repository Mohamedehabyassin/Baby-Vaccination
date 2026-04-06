// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalizationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocalizationState()';
}


}

/// @nodoc
class $LocalizationStateCopyWith<$Res>  {
$LocalizationStateCopyWith(LocalizationState _, $Res Function(LocalizationState) __);
}


/// Adds pattern-matching-related methods to [LocalizationState].
extension LocalizationStatePatterns on LocalizationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LocalizationInitial value)?  initial,TResult Function( LocalizationChangeState value)?  changeState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LocalizationInitial() when initial != null:
return initial(_that);case LocalizationChangeState() when changeState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LocalizationInitial value)  initial,required TResult Function( LocalizationChangeState value)  changeState,}){
final _that = this;
switch (_that) {
case LocalizationInitial():
return initial(_that);case LocalizationChangeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LocalizationInitial value)?  initial,TResult? Function( LocalizationChangeState value)?  changeState,}){
final _that = this;
switch (_that) {
case LocalizationInitial() when initial != null:
return initial(_that);case LocalizationChangeState() when changeState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String language)?  changeState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LocalizationInitial() when initial != null:
return initial();case LocalizationChangeState() when changeState != null:
return changeState(_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String language)  changeState,}) {final _that = this;
switch (_that) {
case LocalizationInitial():
return initial();case LocalizationChangeState():
return changeState(_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String language)?  changeState,}) {final _that = this;
switch (_that) {
case LocalizationInitial() when initial != null:
return initial();case LocalizationChangeState() when changeState != null:
return changeState(_that.language);case _:
  return null;

}
}

}

/// @nodoc


class LocalizationInitial implements LocalizationState {
  const LocalizationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocalizationState.initial()';
}


}




/// @nodoc


class LocalizationChangeState implements LocalizationState {
  const LocalizationChangeState(this.language);
  

 final  String language;

/// Create a copy of LocalizationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizationChangeStateCopyWith<LocalizationChangeState> get copyWith => _$LocalizationChangeStateCopyWithImpl<LocalizationChangeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizationChangeState&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'LocalizationState.changeState(language: $language)';
}


}

/// @nodoc
abstract mixin class $LocalizationChangeStateCopyWith<$Res> implements $LocalizationStateCopyWith<$Res> {
  factory $LocalizationChangeStateCopyWith(LocalizationChangeState value, $Res Function(LocalizationChangeState) _then) = _$LocalizationChangeStateCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class _$LocalizationChangeStateCopyWithImpl<$Res>
    implements $LocalizationChangeStateCopyWith<$Res> {
  _$LocalizationChangeStateCopyWithImpl(this._self, this._then);

  final LocalizationChangeState _self;
  final $Res Function(LocalizationChangeState) _then;

/// Create a copy of LocalizationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(LocalizationChangeState(
null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LocalizationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocalizationEvent()';
}


}

/// @nodoc
class $LocalizationEventCopyWith<$Res>  {
$LocalizationEventCopyWith(LocalizationEvent _, $Res Function(LocalizationEvent) __);
}


/// Adds pattern-matching-related methods to [LocalizationEvent].
extension LocalizationEventPatterns on LocalizationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCachedLocalizationEvent value)?  fetchCachedLocalization,TResult Function( ChangeApplicationLanguageEvent value)?  changeApplicationLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent() when fetchCachedLocalization != null:
return fetchCachedLocalization(_that);case ChangeApplicationLanguageEvent() when changeApplicationLanguage != null:
return changeApplicationLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCachedLocalizationEvent value)  fetchCachedLocalization,required TResult Function( ChangeApplicationLanguageEvent value)  changeApplicationLanguage,}){
final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent():
return fetchCachedLocalization(_that);case ChangeApplicationLanguageEvent():
return changeApplicationLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCachedLocalizationEvent value)?  fetchCachedLocalization,TResult? Function( ChangeApplicationLanguageEvent value)?  changeApplicationLanguage,}){
final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent() when fetchCachedLocalization != null:
return fetchCachedLocalization(_that);case ChangeApplicationLanguageEvent() when changeApplicationLanguage != null:
return changeApplicationLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCachedLocalization,TResult Function( String language)?  changeApplicationLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent() when fetchCachedLocalization != null:
return fetchCachedLocalization();case ChangeApplicationLanguageEvent() when changeApplicationLanguage != null:
return changeApplicationLanguage(_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCachedLocalization,required TResult Function( String language)  changeApplicationLanguage,}) {final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent():
return fetchCachedLocalization();case ChangeApplicationLanguageEvent():
return changeApplicationLanguage(_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCachedLocalization,TResult? Function( String language)?  changeApplicationLanguage,}) {final _that = this;
switch (_that) {
case FetchCachedLocalizationEvent() when fetchCachedLocalization != null:
return fetchCachedLocalization();case ChangeApplicationLanguageEvent() when changeApplicationLanguage != null:
return changeApplicationLanguage(_that.language);case _:
  return null;

}
}

}

/// @nodoc


class FetchCachedLocalizationEvent implements LocalizationEvent {
  const FetchCachedLocalizationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCachedLocalizationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocalizationEvent.fetchCachedLocalization()';
}


}




/// @nodoc


class ChangeApplicationLanguageEvent implements LocalizationEvent {
  const ChangeApplicationLanguageEvent(this.language);
  

 final  String language;

/// Create a copy of LocalizationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeApplicationLanguageEventCopyWith<ChangeApplicationLanguageEvent> get copyWith => _$ChangeApplicationLanguageEventCopyWithImpl<ChangeApplicationLanguageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeApplicationLanguageEvent&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'LocalizationEvent.changeApplicationLanguage(language: $language)';
}


}

/// @nodoc
abstract mixin class $ChangeApplicationLanguageEventCopyWith<$Res> implements $LocalizationEventCopyWith<$Res> {
  factory $ChangeApplicationLanguageEventCopyWith(ChangeApplicationLanguageEvent value, $Res Function(ChangeApplicationLanguageEvent) _then) = _$ChangeApplicationLanguageEventCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class _$ChangeApplicationLanguageEventCopyWithImpl<$Res>
    implements $ChangeApplicationLanguageEventCopyWith<$Res> {
  _$ChangeApplicationLanguageEventCopyWithImpl(this._self, this._then);

  final ChangeApplicationLanguageEvent _self;
  final $Res Function(ChangeApplicationLanguageEvent) _then;

/// Create a copy of LocalizationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(ChangeApplicationLanguageEvent(
null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
