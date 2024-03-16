// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FieldModelAdapter extends TypeAdapter<_$FieldImpl> {
  @override
  final int typeId = 4;

  @override
  _$FieldImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FieldImpl(
      fieldDescription: fields[0] as String,
      fieldCode: fields[1] as String,
      harvestField: fields[2] as String,
      farmField: fields[3] as String,
      productField: fields[4] as String,
      productDescription: fields[5] as String,
      varietyCode: fields[6] as String,
      varietyDescription: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$FieldImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.fieldDescription)
      ..writeByte(1)
      ..write(obj.fieldCode)
      ..writeByte(2)
      ..write(obj.harvestField)
      ..writeByte(3)
      ..write(obj.farmField)
      ..writeByte(4)
      ..write(obj.productField)
      ..writeByte(5)
      ..write(obj.productDescription)
      ..writeByte(6)
      ..write(obj.varietyCode)
      ..writeByte(7)
      ..write(obj.varietyDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FieldModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldImpl _$$FieldImplFromJson(Map<String, dynamic> json) => _$FieldImpl(
      fieldDescription: json['desTalhao'] as String,
      fieldCode: json['codTalhao'] as String,
      harvestField: json['safraTalhao'] as String,
      farmField: json['fazendaTalhao'] as String,
      productField: json['produtoTalhao'] as String,
      productDescription: json['desProduto'] as String,
      varietyCode: json['codVariedade'] as String,
      varietyDescription: json['desVariedade'] as String,
    );

Map<String, dynamic> _$$FieldImplToJson(_$FieldImpl instance) =>
    <String, dynamic>{
      'desTalhao': instance.fieldDescription,
      'codTalhao': instance.fieldCode,
      'safraTalhao': instance.harvestField,
      'fazendaTalhao': instance.farmField,
      'produtoTalhao': instance.productField,
      'desProduto': instance.productDescription,
      'codVariedade': instance.varietyCode,
      'desVariedade': instance.varietyDescription,
    };
