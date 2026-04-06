// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationEvent {

 int get index;
/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationEventCopyWith<NavigationEvent> get copyWith => _$NavigationEventCopyWithImpl<NavigationEvent>(this as NavigationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NavigationEvent(index: $index)';
}


}

/// @nodoc
abstract mixin class $NavigationEventCopyWith<$Res>  {
  factory $NavigationEventCopyWith(NavigationEvent value, $Res Function(NavigationEvent) _then) = _$NavigationEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._self, this._then);

  final NavigationEvent _self;
  final $Res Function(NavigationEvent) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationEvent].
extension NavigationEventPatterns on NavigationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeTabEvent value)?  changeTab,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeTabEvent() when changeTab != null:
return changeTab(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeTabEvent value)  changeTab,}){
final _that = this;
switch (_that) {
case ChangeTabEvent():
return changeTab(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeTabEvent value)?  changeTab,}){
final _that = this;
switch (_that) {
case ChangeTabEvent() when changeTab != null:
return changeTab(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  changeTab,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeTabEvent() when changeTab != null:
return changeTab(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  changeTab,}) {final _that = this;
switch (_that) {
case ChangeTabEvent():
return changeTab(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  changeTab,}) {final _that = this;
switch (_that) {
case ChangeTabEvent() when changeTab != null:
return changeTab(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class ChangeTabEvent implements NavigationEvent {
  const ChangeTabEvent(this.index);
  

@override final  int index;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeTabEventCopyWith<ChangeTabEvent> get copyWith => _$ChangeTabEventCopyWithImpl<ChangeTabEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeTabEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NavigationEvent.changeTab(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChangeTabEventCopyWith<$Res> implements $NavigationEventCopyWith<$Res> {
  factory $ChangeTabEventCopyWith(ChangeTabEvent value, $Res Function(ChangeTabEvent) _then) = _$ChangeTabEventCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ChangeTabEventCopyWithImpl<$Res>
    implements $ChangeTabEventCopyWith<$Res> {
  _$ChangeTabEventCopyWithImpl(this._self, this._then);

  final ChangeTabEvent _self;
  final $Res Function(ChangeTabEvent) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(ChangeTabEvent(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$NavigationState {

 int get index;
/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationStateCopyWith<NavigationState> get copyWith => _$NavigationStateCopyWithImpl<NavigationState>(this as NavigationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationState&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NavigationState(index: $index)';
}


}

/// @nodoc
abstract mixin class $NavigationStateCopyWith<$Res>  {
  factory $NavigationStateCopyWith(NavigationState value, $Res Function(NavigationState) _then) = _$NavigationStateCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._self, this._then);

  final NavigationState _self;
  final $Res Function(NavigationState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationState].
extension NavigationStatePatterns on NavigationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NavigationInitial value)?  initial,TResult Function( NavigationTabChanged value)?  tabChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NavigationInitial() when initial != null:
return initial(_that);case NavigationTabChanged() when tabChanged != null:
return tabChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NavigationInitial value)  initial,required TResult Function( NavigationTabChanged value)  tabChanged,}){
final _that = this;
switch (_that) {
case NavigationInitial():
return initial(_that);case NavigationTabChanged():
return tabChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NavigationInitial value)?  initial,TResult? Function( NavigationTabChanged value)?  tabChanged,}){
final _that = this;
switch (_that) {
case NavigationInitial() when initial != null:
return initial(_that);case NavigationTabChanged() when tabChanged != null:
return tabChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  initial,TResult Function( int index)?  tabChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NavigationInitial() when initial != null:
return initial(_that.index);case NavigationTabChanged() when tabChanged != null:
return tabChanged(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  initial,required TResult Function( int index)  tabChanged,}) {final _that = this;
switch (_that) {
case NavigationInitial():
return initial(_that.index);case NavigationTabChanged():
return tabChanged(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  initial,TResult? Function( int index)?  tabChanged,}) {final _that = this;
switch (_that) {
case NavigationInitial() when initial != null:
return initial(_that.index);case NavigationTabChanged() when tabChanged != null:
return tabChanged(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class NavigationInitial implements NavigationState {
  const NavigationInitial({this.index = 0});
  

@override@JsonKey() final  int index;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationInitialCopyWith<NavigationInitial> get copyWith => _$NavigationInitialCopyWithImpl<NavigationInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationInitial&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NavigationState.initial(index: $index)';
}


}

/// @nodoc
abstract mixin class $NavigationInitialCopyWith<$Res> implements $NavigationStateCopyWith<$Res> {
  factory $NavigationInitialCopyWith(NavigationInitial value, $Res Function(NavigationInitial) _then) = _$NavigationInitialCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$NavigationInitialCopyWithImpl<$Res>
    implements $NavigationInitialCopyWith<$Res> {
  _$NavigationInitialCopyWithImpl(this._self, this._then);

  final NavigationInitial _self;
  final $Res Function(NavigationInitial) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(NavigationInitial(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NavigationTabChanged implements NavigationState {
  const NavigationTabChanged({this.index = 0});
  

@override@JsonKey() final  int index;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationTabChangedCopyWith<NavigationTabChanged> get copyWith => _$NavigationTabChangedCopyWithImpl<NavigationTabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationTabChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NavigationState.tabChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class $NavigationTabChangedCopyWith<$Res> implements $NavigationStateCopyWith<$Res> {
  factory $NavigationTabChangedCopyWith(NavigationTabChanged value, $Res Function(NavigationTabChanged) _then) = _$NavigationTabChangedCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$NavigationTabChangedCopyWithImpl<$Res>
    implements $NavigationTabChangedCopyWith<$Res> {
  _$NavigationTabChangedCopyWithImpl(this._self, this._then);

  final NavigationTabChanged _self;
  final $Res Function(NavigationTabChanged) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(NavigationTabChanged(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
