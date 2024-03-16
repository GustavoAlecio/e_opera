// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EntityModelAdapter extends TypeAdapter<_$EntityModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$EntityModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EntityModelImpl(
      entityCode: fields[0] as String,
      entityName: fields[1] as String,
      entityStore: fields[2] as String?,
      entityStoreName: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EntityModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.entityCode)
      ..writeByte(1)
      ..write(obj.entityName)
      ..writeByte(2)
      ..write(obj.entityStore)
      ..writeByte(3)
      ..write(obj.entityStoreName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EntityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityModelImpl _$$EntityModelImplFromJson(Map<String, dynamic> json) =>
    _$EntityModelImpl(
      entityCode: json['codEntidade'] as String,
      entityName: json['nomeEntidade'] as String,
      entityStore: json['lojEntidade'] as String?,
      entityStoreName: json['nomeLojEntidade'] as String?,
    );

Map<String, dynamic> _$$EntityModelImplToJson(_$EntityModelImpl instance) =>
    <String, dynamic>{
      'codEntidade': instance.entityCode,
      'nomeEntidade': instance.entityName,
      'lojEntidade': instance.entityStore,
      'nomeLojEntidade': instance.entityStoreName,
    };
