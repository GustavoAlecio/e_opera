// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_params_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationParamsModelAdapter
    extends TypeAdapter<_$LocationParamsModelImpl> {
  @override
  final int typeId = 11;

  @override
  _$LocationParamsModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LocationParamsModelImpl(
      farm: fields[0] as FarmModel,
      harvest: fields[1] as HarvestModel,
      field: fields[2] as FieldModel,
    );
  }

  @override
  void write(BinaryWriter writer, _$LocationParamsModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.farm)
      ..writeByte(1)
      ..write(obj.harvest)
      ..writeByte(2)
      ..write(obj.field);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationParamsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
