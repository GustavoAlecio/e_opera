// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FarmModelAdapter extends TypeAdapter<_$FarmModelImpl> {
  @override
  final int typeId = 3;

  @override
  _$FarmModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FarmModelImpl(
      farmCode: fields[0] as String,
      farmName: fields[1] as String,
      branchCode: fields[2] as String,
      branchName: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$FarmModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.farmCode)
      ..writeByte(1)
      ..write(obj.farmName)
      ..writeByte(2)
      ..write(obj.branchCode)
      ..writeByte(3)
      ..write(obj.branchName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FarmModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmModelImpl _$$FarmModelImplFromJson(Map<String, dynamic> json) =>
    _$FarmModelImpl(
      farmCode: json['codFazenda'] as String,
      farmName: json['nomeFazenda'] as String,
      branchCode: json['codFilial'] as String,
      branchName: json['nomeFilial'] as String,
    );

Map<String, dynamic> _$$FarmModelImplToJson(_$FarmModelImpl instance) =>
    <String, dynamic>{
      'codFazenda': instance.farmCode,
      'nomeFazenda': instance.farmName,
      'codFilial': instance.branchCode,
      'nomeFilial': instance.branchName,
    };
