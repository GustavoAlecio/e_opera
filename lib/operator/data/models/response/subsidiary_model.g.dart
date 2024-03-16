// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsidiary_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubsidiaryModelAdapter extends TypeAdapter<_$SubsidiaryModelImpl> {
  @override
  final int typeId = 8;

  @override
  _$SubsidiaryModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubsidiaryModelImpl(
      subsidiaryCode: fields[0] as String,
      subsidiaryName: fields[1] as String,
      companyName: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubsidiaryModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.subsidiaryCode)
      ..writeByte(1)
      ..write(obj.subsidiaryName)
      ..writeByte(2)
      ..write(obj.companyName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubsidiaryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubsidiaryModelImpl _$$SubsidiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubsidiaryModelImpl(
      subsidiaryCode: json['codFilial'] as String,
      subsidiaryName: json['nomeFilial'] as String,
      companyName: json['empresaFilial'] as String?,
    );

Map<String, dynamic> _$$SubsidiaryModelImplToJson(
        _$SubsidiaryModelImpl instance) =>
    <String, dynamic>{
      'codFilial': instance.subsidiaryCode,
      'nomeFilial': instance.subsidiaryName,
      'empresaFilial': instance.companyName,
    };
