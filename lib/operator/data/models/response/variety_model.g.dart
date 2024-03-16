// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variety_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VarietyModelAdapter extends TypeAdapter<_$VarietyModelImpl> {
  @override
  final int typeId = 9;

  @override
  _$VarietyModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$VarietyModelImpl(
      varietyCode: fields[0] as String,
      varietyDescription: fields[1] as String,
      productCode: fields[2] as String,
      productDescription: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$VarietyModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.varietyCode)
      ..writeByte(1)
      ..write(obj.varietyDescription)
      ..writeByte(2)
      ..write(obj.productCode)
      ..writeByte(3)
      ..write(obj.productDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VarietyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VarietyModelImpl _$$VarietyModelImplFromJson(Map<String, dynamic> json) =>
    _$VarietyModelImpl(
      varietyCode: json['codVariedade'] as String,
      varietyDescription: json['desVariedade'] as String,
      productCode: json['codProduto'] as String,
      productDescription: json['desProduto'] as String,
    );

Map<String, dynamic> _$$VarietyModelImplToJson(_$VarietyModelImpl instance) =>
    <String, dynamic>{
      'codVariedade': instance.varietyCode,
      'desVariedade': instance.varietyDescription,
      'codProduto': instance.productCode,
      'desProduto': instance.productDescription,
    };
