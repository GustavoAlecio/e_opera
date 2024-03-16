// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harvest_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HarvestModelAdapter extends TypeAdapter<_$HarvestModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$HarvestModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$HarvestModelImpl(
      desSafra: fields[0] as String,
      codigoSafra: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$HarvestModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.desSafra)
      ..writeByte(1)
      ..write(obj.codigoSafra);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HarvestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HarvestModelImpl _$$HarvestModelImplFromJson(Map<String, dynamic> json) =>
    _$HarvestModelImpl(
      desSafra: json['desSafra'] as String,
      codigoSafra: json['codigoSafra'] as String,
    );

Map<String, dynamic> _$$HarvestModelImplToJson(_$HarvestModelImpl instance) =>
    <String, dynamic>{
      'desSafra': instance.desSafra,
      'codigoSafra': instance.codigoSafra,
    };
