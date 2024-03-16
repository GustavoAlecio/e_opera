// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<_$ProductImpl> {
  @override
  final int typeId = 6;

  @override
  _$ProductImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ProductImpl(
      productDescription: fields[0] as String,
      productCode: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ProductImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.productDescription)
      ..writeByte(1)
      ..write(obj.productCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productDescription: json['desProduto'] as String,
      productCode: json['codProduto'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'desProduto': instance.productDescription,
      'codProduto': instance.productCode,
    };
