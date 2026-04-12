// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_baby_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddBabyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddBabyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddBabyEvent()';
}


}

/// @nodoc
class $AddBabyEventCopyWith<$Res>  {
$AddBabyEventCopyWith(AddBabyEvent _, $Res Function(AddBabyEvent) __);
}


/// Adds pattern-matching-related methods to [AddBabyEvent].
extension AddBabyEventPatterns on AddBabyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddBaby value)?  addBaby,TResult Function( _UpdateBaby value)?  updateBaby,TResult Function( _UpdateDate value)?  updateDate,TResult Function( _UpdateGender value)?  updateGender,TResult Function( _UpdateBloodType value)?  updateBloodType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddBaby() when addBaby != null:
return addBaby(_that);case _UpdateBaby() when updateBaby != null:
return updateBaby(_that);case _UpdateDate() when updateDate != null:
return updateDate(_that);case _UpdateGender() when updateGender != null:
return updateGender(_that);case _UpdateBloodType() when updateBloodType != null:
return updateBloodType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddBaby value)  addBaby,required TResult Function( _UpdateBaby value)  updateBaby,required TResult Function( _UpdateDate value)  updateDate,required TResult Function( _UpdateGender value)  updateGender,required TResult Function( _UpdateBloodType value)  updateBloodType,}){
final _that = this;
switch (_that) {
case _AddBaby():
return addBaby(_that);case _UpdateBaby():
return updateBaby(_that);case _UpdateDate():
return updateDate(_that);case _UpdateGender():
return updateGender(_that);case _UpdateBloodType():
return updateBloodType(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddBaby value)?  addBaby,TResult? Function( _UpdateBaby value)?  updateBaby,TResult? Function( _UpdateDate value)?  updateDate,TResult? Function( _UpdateGender value)?  updateGender,TResult? Function( _UpdateBloodType value)?  updateBloodType,}){
final _that = this;
switch (_that) {
case _AddBaby() when addBaby != null:
return addBaby(_that);case _UpdateBaby() when updateBaby != null:
return updateBaby(_that);case _UpdateDate() when updateDate != null:
return updateDate(_that);case _UpdateGender() when updateGender != null:
return updateGender(_that);case _UpdateBloodType() when updateBloodType != null:
return updateBloodType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addBaby,TResult Function()?  updateBaby,TResult Function( DateTime date)?  updateDate,TResult Function( String gender)?  updateGender,TResult Function( String bloodType)?  updateBloodType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddBaby() when addBaby != null:
return addBaby();case _UpdateBaby() when updateBaby != null:
return updateBaby();case _UpdateDate() when updateDate != null:
return updateDate(_that.date);case _UpdateGender() when updateGender != null:
return updateGender(_that.gender);case _UpdateBloodType() when updateBloodType != null:
return updateBloodType(_that.bloodType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addBaby,required TResult Function()  updateBaby,required TResult Function( DateTime date)  updateDate,required TResult Function( String gender)  updateGender,required TResult Function( String bloodType)  updateBloodType,}) {final _that = this;
switch (_that) {
case _AddBaby():
return addBaby();case _UpdateBaby():
return updateBaby();case _UpdateDate():
return updateDate(_that.date);case _UpdateGender():
return updateGender(_that.gender);case _UpdateBloodType():
return updateBloodType(_that.bloodType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addBaby,TResult? Function()?  updateBaby,TResult? Function( DateTime date)?  updateDate,TResult? Function( String gender)?  updateGender,TResult? Function( String bloodType)?  updateBloodType,}) {final _that = this;
switch (_that) {
case _AddBaby() when addBaby != null:
return addBaby();case _UpdateBaby() when updateBaby != null:
return updateBaby();case _UpdateDate() when updateDate != null:
return updateDate(_that.date);case _UpdateGender() when updateGender != null:
return updateGender(_that.gender);case _UpdateBloodType() when updateBloodType != null:
return updateBloodType(_that.bloodType);case _:
  return null;

}
}

}

/// @nodoc


class _AddBaby implements AddBabyEvent {
  const _AddBaby();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddBaby);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddBabyEvent.addBaby()';
}


}




/// @nodoc


class _UpdateBaby implements AddBabyEvent {
  const _UpdateBaby();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBaby);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddBabyEvent.updateBaby()';
}


}




/// @nodoc


class _UpdateDate implements AddBabyEvent {
  const _UpdateDate(this.date);
  

 final  DateTime date;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDateCopyWith<_UpdateDate> get copyWith => __$UpdateDateCopyWithImpl<_UpdateDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'AddBabyEvent.updateDate(date: $date)';
}


}

/// @nodoc
abstract mixin class _$UpdateDateCopyWith<$Res> implements $AddBabyEventCopyWith<$Res> {
  factory _$UpdateDateCopyWith(_UpdateDate value, $Res Function(_UpdateDate) _then) = __$UpdateDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$UpdateDateCopyWithImpl<$Res>
    implements _$UpdateDateCopyWith<$Res> {
  __$UpdateDateCopyWithImpl(this._self, this._then);

  final _UpdateDate _self;
  final $Res Function(_UpdateDate) _then;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_UpdateDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _UpdateGender implements AddBabyEvent {
  const _UpdateGender(this.gender);
  

 final  String gender;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGenderCopyWith<_UpdateGender> get copyWith => __$UpdateGenderCopyWithImpl<_UpdateGender>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGender&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,gender);

@override
String toString() {
  return 'AddBabyEvent.updateGender(gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$UpdateGenderCopyWith<$Res> implements $AddBabyEventCopyWith<$Res> {
  factory _$UpdateGenderCopyWith(_UpdateGender value, $Res Function(_UpdateGender) _then) = __$UpdateGenderCopyWithImpl;
@useResult
$Res call({
 String gender
});




}
/// @nodoc
class __$UpdateGenderCopyWithImpl<$Res>
    implements _$UpdateGenderCopyWith<$Res> {
  __$UpdateGenderCopyWithImpl(this._self, this._then);

  final _UpdateGender _self;
  final $Res Function(_UpdateGender) _then;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gender = null,}) {
  return _then(_UpdateGender(
null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateBloodType implements AddBabyEvent {
  const _UpdateBloodType(this.bloodType);
  

 final  String bloodType;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateBloodTypeCopyWith<_UpdateBloodType> get copyWith => __$UpdateBloodTypeCopyWithImpl<_UpdateBloodType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBloodType&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType));
}


@override
int get hashCode => Object.hash(runtimeType,bloodType);

@override
String toString() {
  return 'AddBabyEvent.updateBloodType(bloodType: $bloodType)';
}


}

/// @nodoc
abstract mixin class _$UpdateBloodTypeCopyWith<$Res> implements $AddBabyEventCopyWith<$Res> {
  factory _$UpdateBloodTypeCopyWith(_UpdateBloodType value, $Res Function(_UpdateBloodType) _then) = __$UpdateBloodTypeCopyWithImpl;
@useResult
$Res call({
 String bloodType
});




}
/// @nodoc
class __$UpdateBloodTypeCopyWithImpl<$Res>
    implements _$UpdateBloodTypeCopyWith<$Res> {
  __$UpdateBloodTypeCopyWithImpl(this._self, this._then);

  final _UpdateBloodType _self;
  final $Res Function(_UpdateBloodType) _then;

/// Create a copy of AddBabyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bloodType = null,}) {
  return _then(_UpdateBloodType(
null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
