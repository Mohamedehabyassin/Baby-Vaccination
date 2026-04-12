// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BabyModelAdapter extends TypeAdapter<BabyModel> {
  @override
  final typeId = 0;

  @override
  BabyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BabyModel(
      id: fields[0] as String?,
      fullName: fields[1] as String,
      dateOfBirth: fields[2] as DateTime,
      gender: fields[3] as GenderType,
      bloodType: fields[4] as BloodType,
      userId: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BabyModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.dateOfBirth)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.bloodType)
      ..writeByte(5)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BabyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
