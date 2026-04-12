// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderTypeAdapter extends TypeAdapter<GenderType> {
  @override
  final typeId = 1;

  @override
  GenderType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GenderType.boy;
      case 1:
        return GenderType.girl;
      default:
        return GenderType.boy;
    }
  }

  @override
  void write(BinaryWriter writer, GenderType obj) {
    switch (obj) {
      case GenderType.boy:
        writer.writeByte(0);
      case GenderType.girl:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BloodTypeAdapter extends TypeAdapter<BloodType> {
  @override
  final typeId = 2;

  @override
  BloodType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return BloodType.aPositive;
      case 1:
        return BloodType.aNegative;
      case 2:
        return BloodType.bPositive;
      case 3:
        return BloodType.bNegative;
      case 4:
        return BloodType.oPositive;
      case 5:
        return BloodType.oNegative;
      case 6:
        return BloodType.abPositive;
      case 7:
        return BloodType.abNegative;
      default:
        return BloodType.aPositive;
    }
  }

  @override
  void write(BinaryWriter writer, BloodType obj) {
    switch (obj) {
      case BloodType.aPositive:
        writer.writeByte(0);
      case BloodType.aNegative:
        writer.writeByte(1);
      case BloodType.bPositive:
        writer.writeByte(2);
      case BloodType.bNegative:
        writer.writeByte(3);
      case BloodType.oPositive:
        writer.writeByte(4);
      case BloodType.oNegative:
        writer.writeByte(5);
      case BloodType.abPositive:
        writer.writeByte(6);
      case BloodType.abNegative:
        writer.writeByte(7);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
